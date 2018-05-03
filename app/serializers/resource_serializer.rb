# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  scoreresource_id :integer
<<<<<<< HEAD
=======
#  description      :string
#  resource         :string
>>>>>>> SPRINT_REVISION_3
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ResourceSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id ,:name ,:link ,:scoreresource_id
=======
  attributes :id ,:name ,:link ,:scoreresource_id, :description, :resource
>>>>>>> SPRINT_REVISION_3
end
