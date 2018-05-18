# == Schema Information
#
# Table name: teachers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name,  :description, :likes,:dislikes,:malo,:regular,:medio,:bueno,:excelente
  has_many :commentteachers
  
  #def recurso
  #  Resource.find(object.teacher_has_resources[0].resource_id)
  #end
  has_many :teacher_has_courses
  has_many :teacher_has_resources
 
  def likes
		object.scoreteachers.where(positive: 4).size+object.scoreteachers.where(positive: 5).size
  end
  def dislikes
		object.scoreteachers.where(positive: 1).size+object.scoreteachers.where(positive: 2).size
  end

   def malo
		object.scoreteachers.where(positive: 1).size
  end
   def regular
		object.scoreteachers.where(positive: 2).size
  end
   def medio
		object.scoreteachers.where(positive: 3).size
  end
   def bueno
		object.scoreteachers.where(positive: 4).size
  end
   def excelente
		object.scoreteachers.where(positive: 5).size
  end
end
