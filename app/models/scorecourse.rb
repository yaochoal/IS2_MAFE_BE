# == Schema Information
#
# Table name: scorecourses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  positive   :integer
#  negative   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scorecourse < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :course, required: false
	scope :exist, ->(params,params1){where("user_id = ? AND course_id = ?",params,params1)}
end
