class CourseHasTheme < ApplicationRecord
  belongs_to :course, required: false
  belongs_to :theme, required: false
end
