class Tale < ApplicationRecord
  has_many :scenes
  belongs_to :user

end
