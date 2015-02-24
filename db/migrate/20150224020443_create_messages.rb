class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :receiver, index: true
      t.references :sender, index: true
      t.timestamps
    end
  end
end
