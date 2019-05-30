class CreateCelebrityTags < ActiveRecord::Migration[5.2]
  def change
    create_table :celebrity_tags do |t|
      t.references :celebrity, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
