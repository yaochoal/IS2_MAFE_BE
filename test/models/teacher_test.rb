# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  scoreteacher_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
