class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.integer :scoreresource_id
<<<<<<< HEAD
=======
      t.string :description
      t.string :resource
>>>>>>> SPRINT_REVISION_3
      t.timestamps
    end
  end
end
<<<<<<< HEAD
=======

>>>>>>> SPRINT_REVISION_3
