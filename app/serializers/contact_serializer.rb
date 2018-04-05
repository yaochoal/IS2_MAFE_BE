class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :subject, :message
end
