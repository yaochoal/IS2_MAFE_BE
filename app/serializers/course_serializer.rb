# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourseSerializer < ActiveModel::Serializer
  attributes :id , :name ,:code,:likes,:dislikes,:malo,:regular,:medio,:bueno,:excelente
  has_many :commentcourses

  has_many :teacher_has_courses
  has_many :course_has_resources


  def likes
		object.scorecourses.where(positive: 4).size+object.scorecourses.where(positive: 5).size
  end
  def dislikes
		object.scorecourses.where(positive: 1).size+object.scorecourses.where(positive: 2).size
  end


  def malo
		object.scorecourses.where(positive: 1).size
  end
  def regular
		object.scorecourses.where(positive: 2).size
  end
  def medio
		object.scorecourses.where(positive: 3).size
  end
  def bueno
		object.scorecourses.where(positive: 4).size
  end
  def excelente
		object.scorecourses.where(positive: 5).size
  end


end
