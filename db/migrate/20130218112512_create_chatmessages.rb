class CreateChatmessages < ActiveRecord::Migration
  def change
    create_table :chatmessages do |t|
      t.string :user_from
      t.text :message
      t.integer :chatuser_id

      t.timestamps
    end
  end
end
