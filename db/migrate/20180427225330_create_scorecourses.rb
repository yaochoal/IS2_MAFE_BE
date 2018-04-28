class CreateScorecourses < ActiveRecord::Migration[5.1]
  def change
    create_table :scorecourses do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :positive
      t.integer :negative

      t.timestamps
    end
  end
end
