class Choice < ApplicationRecord
  belongs_to :scene
  belongs_to :next_scene, class_name: "Scene"
end
