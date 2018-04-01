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

class ThemeHasResource < ApplicationRecord
  belongs_to :resource, required: false
  belongs_to :theme, required: false
end
