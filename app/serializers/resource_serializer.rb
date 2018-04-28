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
  attributes :id ,:name ,:link , :description, :resource, :user_id,:likes,:dislikes
  has_many :commentresources
  def likes
		object.scoreresources.where(positive: 1).size
  end
  def dislikes
		object.scoreresources.where(negative: 1).size
  end
end
