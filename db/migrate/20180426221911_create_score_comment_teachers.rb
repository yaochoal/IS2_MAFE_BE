class CreateScoreCommentTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :score_comment_teachers do |t|
      t.integer :user_id
      t.integer :comment_teacher_id
      t.integer :negative
      t.integer :positive

      t.timestamps
    end
  end
end
