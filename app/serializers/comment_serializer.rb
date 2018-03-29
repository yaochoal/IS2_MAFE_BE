# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  comment         :string
#  user_id         :integer
#  scorecomment_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment , :user_id, :scorecomment_id
end
