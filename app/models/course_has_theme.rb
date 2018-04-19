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

class CourseHasTheme < ApplicationRecord
  belongs_to :course, required: false
  belongs_to :theme, required: false
end
