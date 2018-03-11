class ThemeHasResource < ApplicationRecord
  belongs_to :resource, required: false
  belongs_to :theme, required: false
end
