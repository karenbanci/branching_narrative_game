class Scene < ApplicationRecord
  has_many :choices
  has_many :encounters
  has_many :npc, through: :encounters
  belongs_to :tale

end
