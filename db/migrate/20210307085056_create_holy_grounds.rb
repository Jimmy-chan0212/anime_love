class CreateHolyGrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :holy_grounds do |t|
      t.string "name"
      t.string "address"
      t.string "image"
      t.text "description"


      t.timestamps
    end
  end
end
