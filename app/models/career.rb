# == Schema Information
#
# Table name: careers
#
#  id         :integer          not null, primary key
#  name       :string
#  studyplan  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Career < ApplicationRecord
    has_many :users
    has_many :career_has_courses
    has_many :courses, through: :career_has_courses
end
