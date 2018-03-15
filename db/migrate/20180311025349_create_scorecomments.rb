class CreateScorecomments < ActiveRecord::Migration[5.1]
  def change
    create_table :scorecomments do |t|
      t.integer :positive
      t.integer :negative

      t.timestamps
    end
  end
end
