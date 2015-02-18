class UpdateCatsTable < ActiveRecord::Migration
  def change
    change_column :cats, :name, :string, :default => nil
    change_column :cats, :arrival_date, :datetime, :default => nil
  end
end
