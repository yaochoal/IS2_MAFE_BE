class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :code
      t.integer :likes
      t.integer :dislikes
      t.timestamps
    end
  end
end
