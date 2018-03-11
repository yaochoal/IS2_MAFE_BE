class CareerHasCourse < ApplicationRecord
  belongs_to :career, required: false
  belongs_to :course, required: false
end
