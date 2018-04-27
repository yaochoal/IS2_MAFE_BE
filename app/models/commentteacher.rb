# == Schema Information
#
# Table name: commentteachers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  teacher_id :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Commentteacher < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :teacher, required: false
  has_many :scorecommentteachers
end
