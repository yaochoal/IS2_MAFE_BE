class CreateCourseHasResources < ActiveRecord::Migration[5.1]
  def change
    create_table :course_has_resources do |t|
      t.belongs_to :course, foreign_key: true
      t.belongs_to :resource, foreign_key: true

      t.timestamps
    end
  end
end
