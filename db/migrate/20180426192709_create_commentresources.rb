class CreateCommentresources < ActiveRecord::Migration[5.1]
  def change
    create_table :commentresources do |t|
      t.integer :user_id
      t.integer :resource_id
      t.string :comment

      t.timestamps
    end
  end
end
