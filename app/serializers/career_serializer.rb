# == Schema Information
#
# Table name: careers
#
#  id         :integer          not null, primary key
#  name       :string
#  studyplan  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CareerSerializer < ActiveModel::Serializer
  attributes :id, :name, :studyplan
end
