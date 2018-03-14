class ChangeData < ActiveRecord::Migration[5.1]
  def change
    change_column :careers, :studyplan, :string, limit: 255
  end
end
