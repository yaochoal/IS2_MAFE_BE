# == Schema Information
#
# Table name: resources
#
#  id               :integer          not null, primary key
#  name             :string
#  link             :string
#  user_id          :integer
#  scoreresource_id :integer
#  description      :string
#  resource         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Resource < ApplicationRecord
  #asosiacion de profesores a recurso
  has_many :teacher_has_resources
  has_many :teachers, through: :teacher_has_resources
  #asosiacion de recursos a materias
  has_many :courses_has_resources
  has_many :courses, through: :courses_has_resources
  #asosiacion de recursos a usuario
  belongs_to :user, required: false
  #asosiacion de recurso con comentarios 
  has_many :commentresources
  mount_base64_uploader :resource, PdfsUploader
 
  scope :search, ->(params){where(name: params)}
end
