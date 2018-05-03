# == Schema Information
#
# Table name: scorecommentcourses
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  commentcourse_id :integer
#  negative         :integer
#  positive         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Scorecommentcourse < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :commentcourse, required: false
end
