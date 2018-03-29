# == Schema Information
#
# Table name: career_has_courses
#
#  id         :integer          not null, primary key
#  career_id  :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CareerHasCourse < ApplicationRecord
  belongs_to :career, required: false
  belongs_to :course, required: false
end
