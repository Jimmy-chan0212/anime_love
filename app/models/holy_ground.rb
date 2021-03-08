class HolyGround < ApplicationRecord
  has_many :anime_holy_grounds, dependent: :destroy
  has_many :animes, through: :anime_holy_grounds
end
