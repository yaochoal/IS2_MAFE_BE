class CourseHasTheme < ApplicationRecord
  belongs_to :course
  belongs_to :theme
end
