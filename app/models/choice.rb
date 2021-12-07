class Choice < ApplicationRecord
  belongs_to :scene
  belongs_to :next_scene, class_name: "Scene"

  # fazer validacao que par cena  e proxima cena deve ser unico
end
