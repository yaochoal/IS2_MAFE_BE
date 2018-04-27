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

class CommentTeacher < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :teacher, required: false
  has_many :score_comment_teachers
end
