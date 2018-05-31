# == Schema Information
#
# Table name: teacher_has_courses
#
#  id         :integer          not null, primary key
#  teacher_id :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeacherHasCourseSerializer < ActiveModel::Serializer
  attributes :id, :teacher_name,:teacher_description,:teacher_id,:course_id,:course_name,:likes_teacher,:likes_course
  def teacher_name
  	Teacher.find(object.teacher_id).name
  end
  def teacher_description
  	Teacher.find(object.teacher_id).description
  end
  def likes_teacher
  	Teacher.find(object.teacher_id).scoreteachers.where(positive: 4).size+Teacher.find(object.teacher_id).scoreteachers.where(positive: 5).size
  end
  def course_name
  	Course.find(object.course_id).name
  end
  def likes_course
		Course.find(object.course_id).scorecourses.where(positive: 4).size+Course.find(object.course_id).scorecourses.where(positive: 5).size
  end
 
  
end
