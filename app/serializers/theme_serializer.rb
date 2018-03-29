# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ThemeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
end
