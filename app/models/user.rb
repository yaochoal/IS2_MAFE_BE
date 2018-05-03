# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string
#  password1              :string
#  image                  :string
#  avatar                 :string
#  career_id              :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   alias_method :authenticate, :valid_password?  
   after_create :send_admin_mail
   
   mount_base64_uploader :image, AvatarUploader

   def send_admin_mail
    # UserMailer.welcome_mail(self).deliver_now
   end
   def self.from_taken_payload(payload)
      self.find payload["sub"]
   end

   #asosiacion de usuario con comentarios 
   has_many :commentcourses
   has_many :commentresources
   has_many :commentteachers
   #asosiacion con calificaciones de comentarios
   has_many :scorecommentteachers
   has_many :scorecommentresources
   has_many :scorecommentcourses
   #asosiacion con calificaciones de post
   has_many :scoreteachers
   has_many :scoreresources
   has_many :scorecourses

   #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

   #asosiacion de usuario a sus recursos
   has_many :resources
   #asosiacion de usuario a su carrera
   belongs_to :career, required: false
   #validates :password, length: { minimum: 8 }
   validates :email, presence: true, uniqueness: true
   #ver comentarios de el id del usuario
   def self.get_idcomments(params)
         self.joins(:comments).select('users.id ,users.username, comments.comment').where(id: params)
   end
   #ver todos los comentarios
   def self.get_allcomments
         self.joins(:comments).select('users.id ,users.username, comments.comment')
   end
   scope :search, ->(params){where(email: params)}
end
