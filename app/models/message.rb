class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User", dependent: :destroy
  belongs_to :receiver, class_name: "User", dependent: :destroy
end
