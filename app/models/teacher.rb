# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  scoreteacher_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Teacher < ApplicationRecord
  has_many :teacher_has_courses
  has_many :courses, through: :teacher_has_courses
  belongs_to :scoreteacher, required: false
  #ver los cursos de apoyo de un profesor id
  def self.get_idcourses(params)
   		self.joins(:courses).select('teachers.id,teachers.name as teacher_name, courses.id as course_id, courses.name as course_name').where(id: params)
  end
  #ver todos los profesores y sus cursos 
  def self.get_allcourses
   		self.joins(:courses).select('teachers.id ,teachers.name as teacher_name,courses.id as course_id, courses.name as course_name')
  end
  scope :search, ->(params){where(name: params)}
end
