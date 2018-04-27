class CreateCommentTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_teachers do |t|
      t.integer :user_id
      t.integer :teacher_id
      t.string :comment

      t.timestamps
    end
  end
end
