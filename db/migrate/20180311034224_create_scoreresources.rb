class CreateScoreresources < ActiveRecord::Migration[5.1]
  def change
    create_table :scoreresources do |t|
      t.integer :score
      t.integer :votes

      t.timestamps
    end
  end
end
