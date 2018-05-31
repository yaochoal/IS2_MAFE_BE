class CreateCommentcourses < ActiveRecord::Migration[5.1]
  def change
    create_table :commentcourses do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :comment

      t.timestamps
    end
  end
end
