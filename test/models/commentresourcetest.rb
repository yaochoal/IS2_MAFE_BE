# == Schema Information
#
# Table name: comment_resources
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  resource_id :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CommentresourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
