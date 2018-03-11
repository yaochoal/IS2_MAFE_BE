class CreateCareerHasCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :career_has_courses do |t|
      t.belongs_to :career, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.timestamps
    end
  end
end
