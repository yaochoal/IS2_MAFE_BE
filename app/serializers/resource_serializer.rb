# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  scoreresource_id :integer
#  description      :string
#  resource         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#

class ResourceSerializer < ActiveModel::Serializer
  attributes :id ,:name ,:link ,:scoreresource_id, :description, :resource, :user_id
end
