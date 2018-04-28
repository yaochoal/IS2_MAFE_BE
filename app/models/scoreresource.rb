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

class Scoreresource < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :resource, required: false
end
