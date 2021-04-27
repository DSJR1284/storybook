class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :bio
      t.integer :user_id 
      t.integer :story_id 
      t.timestamps
    end
  end
end
