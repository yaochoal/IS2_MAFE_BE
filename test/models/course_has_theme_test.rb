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

require 'test_helper'

class CourseHasThemeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
