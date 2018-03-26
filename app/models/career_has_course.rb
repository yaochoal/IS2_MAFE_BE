class CareerHasCourse < ApplicationRecord
  belongs_to :career
  belongs_to :course
end
