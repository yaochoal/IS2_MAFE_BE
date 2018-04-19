# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  lastname   :string
#  email      :string
#  subject    :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :subject, :message
end
