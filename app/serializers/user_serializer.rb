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

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :avatar, :career_id, :encrypted_password, :password1, :image
  #has_many :resources
  #has_many :commentcourses
  #has_many :commentteachers
  #has_many :commentresources
  #has_many :scorecommentcourses
  #has_many :scorecommentteachers
  #has_many :scorecommentresources
end
