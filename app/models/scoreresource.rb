# == Schema Information
#
# Table name: scoreresources
#
#  id         :integer          not null, primary key
#  score      :integer
#  votes      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scoreresource < ApplicationRecord
  has_one :resource
end
