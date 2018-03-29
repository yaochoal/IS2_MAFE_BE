# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  scoreteacher_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Teacher < ApplicationRecord
  has_many :teacher_has_courses
  has_many :courses, through: :teacher_has_courses
  belongs_to :scoreteacher, required: false
end
