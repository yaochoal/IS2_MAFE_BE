
class User < ApplicationRecord
   has_many :comments
   belongs_to :career, required: false
   validates :username, presence: true
   validates :password, length: { minimum: 8 }, presence: true
   validates :email, presence: true, uniqueness: true, presence: true,format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
end
