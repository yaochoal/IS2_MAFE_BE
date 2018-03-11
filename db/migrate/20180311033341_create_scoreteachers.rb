class CreateScoreteachers < ActiveRecord::Migration[5.1]
  def change
    create_table :scoreteachers do |t|
      t.integer :score
      t.integer :votes

      t.timestamps
    end
  end
end
