#require "open-uri"
require 'squid'
class ResourPdf < Prawn::Document
	def initialize()
		super()
		image open("http://localhost:3000/uploads/resource/resource/logo.png"), :width => 350
		
		text "        "
		text "        "
		text "        "
		text "Los recursos de las materias clasificadas en nuestra base de datos son: ", :size => 20, :inline_format => true, :color => '070917'
		text "        "
		resources = Resource.all.order(created_at: :desc)
		resources.each do |resoo|
		malo =resoo.scoreresources.where(positive: 1).size
		regular = resoo.scoreresources.where(positive: 2).size
		medio = resoo.scoreresources.where(positive: 3).size
		bueno = resoo.scoreresources.where(positive: 4).size
		excelente = resoo.scoreresources.where(positive: 5).size
		text "#{resoo.id}  #{resoo.name}", :size => 18, :inline_format => true, :color => '252c79'
		text "Link de descarga #{resoo.link }",:size => 14, :inline_format => true, :color => '13173e'
		data = {Malo: {resoo.name => malo},
		Regular: {resoo.name => regular},
		Medio: {resoo.name => medio},
		Bueno: {resoo.name => bueno},
		Excelente: {resoo.name => excelente}
		}
		chart data
		end
		
end
end
