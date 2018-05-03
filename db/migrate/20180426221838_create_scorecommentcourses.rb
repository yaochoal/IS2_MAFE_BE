class CreateScorecommentcourses < ActiveRecord::Migration[5.1]
  def change
    create_table :scorecommentcourses do |t|
      t.integer :user_id
      t.integer :commentcourse_id
      t.integer :negative
      t.integer :positive

      t.timestamps
    end
  end
end
