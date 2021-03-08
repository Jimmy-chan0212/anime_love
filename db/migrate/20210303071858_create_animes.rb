class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string "name"
      t.string "address"
      t.string "description"
      t.string "image"

      t.timestamps
    end
  end
end
