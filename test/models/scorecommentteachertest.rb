# == Schema Information
#
# Table name: score_comment_teachers
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  comment_teacher_id :integer
#  negative           :integer
#  positive           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ScorecommentteacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
