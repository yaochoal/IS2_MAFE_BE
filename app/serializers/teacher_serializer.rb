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
  attributes :id, :name, :description, :likes,:dislikes
  has_many :commentteachers
  def likes
		object.scoreteachers.where(positive: 1).size
  end
  def dislikes
		object.scoreteachers.where(negative: 1).size
  end
end
