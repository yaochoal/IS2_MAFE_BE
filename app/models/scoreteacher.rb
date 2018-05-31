# == Schema Information
#
# Table name: scoreteachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  positive   :integer
#  negative   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scoreteacher < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :teacher, required: false
	scope :exist, ->(params,params1){where("user_id = ? AND teacher_id = ?",params,params1)}
end
