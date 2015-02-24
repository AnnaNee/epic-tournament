class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validate :username, uniqueness: true
  before_save :set_username

  has_many :messages, foreign_key: :receiver_id
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"

  def set_username
    self.username = username.gsub(" ", "")
  end
end
