class Npc < ApplicationRecord
  has_many :encounters
  # has_one_attached :photo
end
