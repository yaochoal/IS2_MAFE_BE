# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  scoreresource_id :integer
#  description      :string
#  resource         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#

require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
