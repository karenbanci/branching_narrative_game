class Encounter < ApplicationRecord
  belongs_to :npc
  belongs_to :scene
end
