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
  attributes :id , :name ,:code
end