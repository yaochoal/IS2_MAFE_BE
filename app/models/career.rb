# == Schema Information
#
# Table name: careers
#
#  id         :integer          not null, primary key
#  name       :string
#  studyplan  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Career < ApplicationRecord
    #asosiacion de carrera a sus usuarios
    has_many :users
    #asosiacion de carreras a materias
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
