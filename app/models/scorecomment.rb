# == Schema Information
#
# Table name: scorecomments
#
#  id         :integer          not null, primary key
#  positive   :integer
#  negative   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scorecomment < ApplicationRecord
  has_one :comment
end
