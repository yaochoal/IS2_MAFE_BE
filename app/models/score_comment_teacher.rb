# == Schema Information
#
# Table name: score_comment_teachers
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  comment_teacher_id :integer
#  negative           :integer
#  positive           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class ScoreCommentTeacher < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :comment_teacher, required: false
end
