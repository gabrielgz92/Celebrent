class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.references :celebrity, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
