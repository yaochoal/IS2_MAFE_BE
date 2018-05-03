class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password1
     # t.string :email
<<<<<<< HEAD
      t.string :avatar
      t.integer :career_id
	  
=======
     t.string :image
      t.string :avatar
      t.integer :career_id
>>>>>>> SPRINT_REVISION_3
      t.timestamps
    end
  end
end
