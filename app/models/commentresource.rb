# == Schema Information
#
# Table name: commentresources
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  resource_id :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Commentresource < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :resource, required: false
  has_many :scorecommentresources
end
