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
  	#ver las materias de de una carrera id
 	 def self.get_idcourses(params)
   		self.joins(:courses).select('careers.id,careers.name as career_name, courses.id as course_id, courses.name as course_name').where(id: params)
 	 end
 	 #ver todos los carreras y sus materias
 	 def self.get_allcourses
 	  	self.joins(:courses).select('careers.id ,careers.name as career_name,courses.id as course_id, courses.name as course_name')
  	 end
end
