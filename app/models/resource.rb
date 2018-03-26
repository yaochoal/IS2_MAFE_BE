class Resource < ApplicationRecord
  has_many :theme_has_resources
  has_many :themes, through: :theme_has_resources
  belongs_to  :scoreresource
  validates :name, presence: true
end

