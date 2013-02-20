class CreateChatusers < ActiveRecord::Migration
  def change
    create_table :chatusers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
