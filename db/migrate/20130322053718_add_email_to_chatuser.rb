class AddEmailToChatuser < ActiveRecord::Migration
  def change
    add_column :chatusers, :email, :string
  end
end
