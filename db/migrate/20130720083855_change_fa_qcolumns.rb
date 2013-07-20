class ChangeFaQcolumns < ActiveRecord::Migration
  def up
    change_column :faqs, :answer, :text
    change_column :faqs, :question, :text
  end

  def down
  end
end
