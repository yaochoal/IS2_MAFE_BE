# == Schema Information
#
# Table name: comment_courses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentcourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
