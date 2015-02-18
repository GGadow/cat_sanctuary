class RecreateTables < ActiveRecord::Migration

  def up
    drop_table :adoptions
    drop_table :cats
    drop_table :people

    
    create_table :people do |t|
      t.string    :fname 
      t.string    :lname 
      t.string    :address 
      t.string    :city 
      t.string    :state  
      t.string    :postal_code 
      t.string    :day_phone
      t.string    :eve_phone
      t.text      :notes
      t.timestamps null: false
    end

    create_table :cats do |t|
      t.string    :name 
      t.string    :breed 
      t.integer   :age
      t.string    :image_url  
      t.datetime  :arrival_date 
      t.text      :notes
      t.timestamps null: false
    end

    create_table :adoptions do |t|
      t.belongs_to :cat, index: true
      t.belongs_to :person, index: true

      t.datetime    :adoption_date 
      t.text        :notes
      t.timestamps  null: false
    end

  end

  def down
    #Not reversable; do nothing
  end

end
