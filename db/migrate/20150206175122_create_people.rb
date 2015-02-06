class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string    :fname        ,:null => false
      t.string    :lname        ,:null => false
      t.string    :address      ,:null => false
      t.string    :city         ,:null => false
      t.string    :state        ,:null => false
      t.string    :postal_code  ,:null => false
      t.string    :day_phone
      t.string    :eve_phone
      t.text      :notes
      # column :create_date removed; redundant with :created_at added with below macro
      t.timestamps              null: false
    end
  end
end
