class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :description
      t.integer :likes
      t.integer :dislikes
      t.timestamps
    end
  end
end
