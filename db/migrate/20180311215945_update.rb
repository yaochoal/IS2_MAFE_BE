class Update < ActiveRecord::Migration[5.1]
  def change
    change_table :careers do |t|
      t.change  :studyplan, :string
    end
  end
end
