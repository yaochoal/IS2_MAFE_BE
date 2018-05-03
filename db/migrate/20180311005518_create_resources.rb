class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.integer :user_id
      t.integer :scoreresource_id
      t.string :description
      t.string :resource
      t.timestamps
    end
  end
end

