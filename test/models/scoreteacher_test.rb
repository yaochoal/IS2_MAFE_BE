# == Schema Information
#
# Table name: scoreteachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  positive   :integer
#  negative   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ScoreteacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
