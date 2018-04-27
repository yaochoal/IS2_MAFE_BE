class CreateCommentResources < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_resources do |t|
      t.integer :user_id
      t.integer :resource_id
      t.string :comment

      t.timestamps
    end
  end
end
