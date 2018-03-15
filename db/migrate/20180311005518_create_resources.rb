class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.integer :scoreresource_id
      t.timestamps
    end
  end
end
