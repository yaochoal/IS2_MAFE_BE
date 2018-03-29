# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Theme < ApplicationRecord
  has_many :course_has_themes
  has_many :courses, through: :course_has_themes
  has_many :theme_has_resources
  has_many :resources, through: :theme_has_resources
end
