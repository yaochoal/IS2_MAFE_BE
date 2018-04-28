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
  attributes :id , :name ,:code,:likes,:dislikes
  has_many :commentcourses

  def likes
		object.scorecourses.where(positive: 1).size
  end
  def dislikes
		object.scorecourses.where(negative: 1).size
  end
end
