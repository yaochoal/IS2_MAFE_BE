class CreateScorecommentteachers < ActiveRecord::Migration[5.1]
  def change
    create_table :scorecommentteachers do |t|
      t.integer :user_id
      t.integer :commentteacher_id
      t.integer :negative
      t.integer :positive

      t.timestamps
    end
  end
end
