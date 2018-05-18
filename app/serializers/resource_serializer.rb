# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  user_id          :integer
#  scoreresource_id :integer
#  description      :string
#  resource         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ResourceSerializer < ActiveModel::Serializer
  attributes :id ,:name ,:link , :description, :resource, :user_id,:likes,:dislikes,:malo,:regular,:medio,:bueno,:excelente,:course_has_resources,:teacher_has_resources
  has_many :commentresources

  has_many :course_has_resources
  has_many :teacher_has_resources

 
  def likes
		object.scoreresources.where(positive: 4).size+object.scoreresources.where(positive: 5).size
  end
  def dislikes
		object.scoreresources.where(positive: 1).size+object.scoreresources.where(positive: 2).size
  end

  def malo
		object.scoreresources.where(positive: 1).size
  end
  def regular
		object.scoreresources.where(positive: 2).size
  end
  def medio
		object.scoreresources.where(positive: 3).size
  end
  def bueno
		object.scoreresources.where(positive: 4).size
  end
  def excelente
		object.scoreresources.where(positive: 5).size
  end

end
