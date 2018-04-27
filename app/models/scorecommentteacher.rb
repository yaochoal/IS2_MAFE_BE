# == Schema Information
#
# Table name: scorecommentteachers
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  commentteacher_id :integer
#  negative          :integer
#  positive          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Scorecommentteacher < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :commentteacher, required: false
end
