class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :studyplan
      t.timestamps
    end
  end
end
