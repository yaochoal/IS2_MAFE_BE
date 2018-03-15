class User < ApplicationRecord
   has_many :comments
   belongs_to :career, required: false
   validates :password, length: { minimum: 8 }
   validates :email, presence: true, uniqueness: true
end
