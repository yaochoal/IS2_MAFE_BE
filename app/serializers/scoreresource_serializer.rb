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

class ScoreresourceSerializer < ActiveModel::Serializer
  attributes :id, :score, :votes
end
