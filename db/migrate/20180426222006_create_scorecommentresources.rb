class CreateScorecommentresources < ActiveRecord::Migration[5.1]
  def change
    create_table :scorecommentresources do |t|
      t.integer :user_id
      t.integer :commentresource_id
      t.integer :negative
      t.integer :positive

      t.timestamps
    end
  end
end
