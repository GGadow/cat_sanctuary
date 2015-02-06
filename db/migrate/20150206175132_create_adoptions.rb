class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.belongs_to :cat, index: true
      t.belongs_to :person, index: true

      t.datetime    :adoption_date  ,:null => false
      t.text        :notes

      t.timestamps                  null: false
    end
  end
end
