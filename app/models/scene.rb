class Scene < ApplicationRecord
  has_many :choices
  has_many :encounters
  has_many :npcs, through: :encounters
  belongs_to :tale

  has_one_attached :background

end
