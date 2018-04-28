#require "open-uri"
class ResourPdf < Prawn::Document
	def initialize()
		super()
		#image open("https://image.ibb.co/mRbXsH/logo.png"), :width => 350
		text "        "
		text "        "
		text "        "
		text "Los recursos de las materias clasificadas en nuestra base de datos son: ", :size => 20, :inline_format => true, :color => '070917'
		text "        "
		resources = Resource.all
		resources.each do |resoo|
		text "#{resoo.id}  #{resoo.name}", :size => 18, :inline_format => true, :color => '252c79'
		text "Link de descarga #{resoo.link }",:size => 14, :inline_format => true, :color => '13173e'
		end
		
end
end
