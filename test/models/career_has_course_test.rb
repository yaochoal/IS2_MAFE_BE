# == Schema Information
#
# Table name: career_has_courses
#
#  id         :integer          not null, primary key
#  career_id  :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CareerHasCourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
