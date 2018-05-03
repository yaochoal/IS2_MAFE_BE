class CreateScoreresources < ActiveRecord::Migration[5.1]
  def change
    create_table :scoreresources do |t|
      t.integer :user_id
      t.integer :resource_id
      t.integer :positive
      t.integer :negative

      t.timestamps
    end
  end
end
