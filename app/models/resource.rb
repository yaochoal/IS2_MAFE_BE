# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  scoreresource_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Resource < ApplicationRecord
  has_many :theme_has_resources
  has_many :themes, through: :theme_has_resources
  belongs_to  :scoreresource, required: false
end
