class Career < ApplicationRecord
    has_many :users
    has_many :career_has_courses
    has_many :courses, through: :career_has_courses
end
