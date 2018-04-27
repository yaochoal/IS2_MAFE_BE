# == Schema Information
#
# Table name: comment_teachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentTeacherSerializer < ActiveModel::Serializer
	attributes :id,:user_id, :teacher_id,:comment
	has_many :score_comment_teachers
end
