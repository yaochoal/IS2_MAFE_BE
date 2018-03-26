class ThemeHasResource < ApplicationRecord
  belongs_to :resource
  belongs_to :theme
end
