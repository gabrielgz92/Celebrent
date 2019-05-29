class AddLocationToCelebrities < ActiveRecord::Migration[5.2]
  def change
    add_column :celebrities, :city, :string
    add_column :celebrities, :country, :string
  end
end
