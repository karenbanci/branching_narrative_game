class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
