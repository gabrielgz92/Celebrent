class CreateCelebrities < ActiveRecord::Migration[5.2]
  def change
    create_table :celebrities do |t|
      t.string :last_name
      t.string :first_name
      t.text :description
      t.string :gender
      t.datetime :date_of_birth
      t.string :photo
      t.integer :rate_per_hour

      t.timestamps
    end
  end
end
