# == Schema Information
#
# Table name: theme_has_resources
#
#  id          :integer          not null, primary key
#  resource_id :integer
#  theme_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ThemeHasResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
