# == Schema Information
#
# Table name: score_comment_courses
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  comment_course_id :integer
#  negative          :integer
#  positive          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ScorecommentcourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
