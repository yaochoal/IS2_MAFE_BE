class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :description
      t.integer :scoreteacher_id

      t.timestamps
    end
  end
end
