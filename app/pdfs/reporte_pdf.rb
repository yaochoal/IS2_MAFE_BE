#require "open-uri"
require 'squid'
class ReportePdf < Prawn::Document
	def initialize()
		super()
		image open("http://localhost:3000/uploads/resource/resource/logo.png"), :width => 350
		text "        "
		text "        "
		text "        "
		text "Los profesores registrados en nuestra base de datos son: ", :size => 20, :inline_format => true, :color => '070917'
		text "        "
		teacher = Teacher.all
		teacher.each do |event|
		malo =event.scoreteachers.where(positive: 1).size
		regular = event.scoreteachers.where(positive: 2).size
		medio = event.scoreteachers.where(positive: 3).size
		bueno = event.scoreteachers.where(positive: 4).size
		excelente = event.scoreteachers.where(positive: 5).size
		text "#{event.id}  #{event.name}", :size => 18, :inline_format => true, :color => '252c79'
		text "Descripcion: #{event.description}",:size => 14, :inline_format => true, :color => '13173e'
		#text "El profesor #{event.id,event.name,event.description}" 
		data = {Malo: {event.name => malo},
		Regular: {event.name => regular},
		Medio: {event.name => medio},
		Bueno: {event.name => bueno},
		Excelente: {event.name => excelente}
		}
		chart data
		end
		
end
end
