class DropCharactersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :characters 
  end
end
