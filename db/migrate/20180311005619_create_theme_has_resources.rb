class CreateThemeHasResources < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_has_resources do |t|
      t.belongs_to :resource, foreign_key: true
      t.belongs_to :theme, foreign_key: true

      t.timestamps
    end
  end
end
