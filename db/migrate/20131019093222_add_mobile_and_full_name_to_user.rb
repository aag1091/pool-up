class AddMobileAndFullNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :mobile, :string
    add_column :users, :full_name, :string
  end
end
