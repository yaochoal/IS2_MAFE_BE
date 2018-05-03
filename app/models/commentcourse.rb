# == Schema Information
#
# Table name: commentcourses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Commentcourse < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :course, required: false
  has_many :scorecommentcourses
  
end
