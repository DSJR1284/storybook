class ChangeCCommentsColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :reviews, :text 
  end
end
