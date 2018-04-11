# == Schema Information
#
# Table name: careers
#
#  id         :integer          not null, primary key
#  name       :string
#  studyplan  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CareerSerializer < ActiveModel::Serializer
  attributes :id, :name, :studyplan
end
