class Test < ApplicationRecord
  has_many :theme_has_resources
  has_many :themes, through: :theme_has_resources
  belongs_to  :scoreresource, required: false
  mount_base64_uploader :resource, PdfsUploader
  #ver los temas de apoyo de un recurso id
  def self.get_idthemes(params)
   		self.joins(:themes).select('resources.id,resources.name as resource_name, themes.id as teacher_id, themes.name as theme_name').where(id: params)
  end
  #ver todos los recursos y sus temas de apoyo
  def self.get_allthemes
   		self.joins(:themes).select('resources.id ,resources.name as resource_name,themes.id as teacher_id, themes.name as theme_name')
  end
  scope :search, ->(params){where(name: params)}
end