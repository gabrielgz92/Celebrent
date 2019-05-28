class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :description, :text
    add_column :users, :gender, :string
    add_column :users, :photo, :string
  end
end
