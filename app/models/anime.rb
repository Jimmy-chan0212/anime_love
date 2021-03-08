class Anime < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :release, presence: true
  validates :description, presence: true

  has_many :anime_holy_grounds, dependent: :destroy
  has_many :holy_grounds, through: :anime_holy_grounds
  accepts_nested_attributes_for :holy_grounds
end
