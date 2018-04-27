class CreateScoreCommentCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :score_comment_courses do |t|
      t.integer :user_id
      t.integer :comment_course_id
      t.integer :negative
      t.integer :positive

      t.timestamps
    end
  end
end
