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

class ScorecommentSerializer < ActiveModel::Serializer
  attributes :id ,:positive ,:negative
end
