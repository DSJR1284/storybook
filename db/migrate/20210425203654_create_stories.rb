class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.textarea :description 
      t.timestamps
    end
  end
end
