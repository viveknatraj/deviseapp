class AddPropertyToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :emp_code, :integer
    add_column :users, :mobile, :string
  end
end
