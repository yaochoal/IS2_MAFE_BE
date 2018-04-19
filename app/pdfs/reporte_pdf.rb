require "open-uri"
class ReportePdf < Prawn::Document
	def initialize()
		super()
		image open("https://image.ibb.co/mRbXsH/logo.png"), :width => 350
		text "        "
		text "        "
		text "        "
		text "Los profesores registrados en nuestra base de datos son: ", :size => 20, :inline_format => true, :color => '070917'
		text "        "
		teacher = Teacher.all
		teacher.each do |event|
		text "#{event.id}  #{event.name}", :size => 18, :inline_format => true, :color => '252c79'
		text "Descripcion: #{event.description}",:size => 14, :inline_format => true, :color => '13173e'
		#text "El profesor #{event.id,event.name,event.description}" 
		end
		
end
end
