class Theme < ApplicationRecord
  has_many :course_has_themes
  has_many :courses, through: :course_has_themes
  has_many :theme_has_resources
  has_many :resources, through: :theme_has_resources
  validates :name, presence: true
end
