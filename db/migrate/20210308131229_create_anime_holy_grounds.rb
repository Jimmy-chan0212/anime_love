class CreateAnimeHolyGrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :anime_holy_grounds do |t|
      t.integer "anime_id"
      t.integer "holy_ground_id"

      t.timestamps
    end
  end
end
