class AddCoordinatesToCelebrities < ActiveRecord::Migration[5.2]
  def change
    add_column :celebrities, :latitude, :float
    add_column :celebrities, :longitude, :float
  end
end
