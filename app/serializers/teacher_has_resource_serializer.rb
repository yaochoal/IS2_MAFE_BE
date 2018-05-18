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

class TeacherHasResourceSerializer < ActiveModel::Serializer
  attributes :id, :teacher_name,:teacher_description,:likes_teacher,:teacher_id,:resource_id,:resource_name,:likes_teacher,:likes_resource
  def teacher_name
  	Teacher.find(object.teacher_id).name
  end
  def teacher_description
  	Teacher.find(object.teacher_id).description
  end
  def likes_teacher
  	Teacher.find(object.teacher_id).scoreteachers.where(positive: 4).size+Teacher.find(object.teacher_id).scoreteachers.where(positive: 5).size
  end
  def resource_name
  	Resource.find(object.resource_id).name
  end
  def likes_resource
		Resource.find(object.resource_id).scoreresources.where(positive: 4).size+Resource.find(object.resource_id).scoreresources.where(positive: 5).size
  end
 
  
end
