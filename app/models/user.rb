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
end
