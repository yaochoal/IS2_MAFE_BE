# == Schema Information
#
# Table name: comment_teachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentteacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
