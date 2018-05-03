class CreateScoreteachers < ActiveRecord::Migration[5.1]
  def change
    create_table :scoreteachers do |t|
      t.integer :user_id
      t.integer :teacher_id
      t.integer :positive
      t.integer :negative

      t.timestamps
    end
  end
end
