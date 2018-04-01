# == Schema Information
#
# Table name: course_has_themes
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  theme_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourseHasThemeSerializer < ActiveModel::Serializer
  attributes :id ,:course_id,:theme_id
end
