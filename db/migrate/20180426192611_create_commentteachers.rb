class CreateCommentteachers < ActiveRecord::Migration[5.1]
  def change
    create_table :commentteachers do |t|
      t.integer :user_id
      t.integer :teacher_id
      t.string :comment

      t.timestamps
    end
  end
end
