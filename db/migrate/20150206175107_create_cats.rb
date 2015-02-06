class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
    
      t.string    :name         ,:null => false
      t.string    :breed 
      t.integer   :age
      t.string    :image_url  
      t.datetime  :arrival_date ,:null => false
      t.text      :notes

      t.timestamps null: false
    end
  end
end
