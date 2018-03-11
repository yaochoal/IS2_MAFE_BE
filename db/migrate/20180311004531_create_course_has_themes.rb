class CreateCourseHasThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :course_has_themes do |t|
      t.belongs_to :course, foreign_key: true
      t.belongs_to :theme, foreign_key: true

      t.timestamps
    end
  end
end
