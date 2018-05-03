# == Schema Information
#
# Table name: scoreresources
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  resource_id :integer
#  positive    :integer
#  negative    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ScoreresourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
