# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  password   :string
#  email      :string
#  avatar     :string
#  career_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
   has_many :comments
   belongs_to :career, required: false
   validates :password, length: { minimum: 8 }
   validates :email, presence: true, uniqueness: true
   #ver comentarios de el id del usuario
   def self.get_idcomments(params)
         self.joins(:comments).select('users.id ,users.username, comments.comment').where(id: params)
   end
   #ver todos los comentarios
   def self.get_allcomments
         self.joins(:comments).select('users.id ,users.username, comments.comment')
   end
end
