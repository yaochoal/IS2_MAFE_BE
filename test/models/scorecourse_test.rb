# == Schema Information
#
# Table name: scorecourses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  positive   :integer
#  negative   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ScorecourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
