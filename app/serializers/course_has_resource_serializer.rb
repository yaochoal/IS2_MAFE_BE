# == Schema Information
#
# Table name: course_has_resources
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  resource_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CourseHasResourceSerializer < ActiveModel::Serializer
  attributes :id, :resource_id,:resource_name,:likes

  
  def resource_name
  	Resource.find(object.resource_id).name
  end
  def likes
	Resource.find(object.resource_id).scoreresources.where(positive: 4).size+Resource.find(object.resource_id).scoreresources.where(positive: 5).size
  end
end
