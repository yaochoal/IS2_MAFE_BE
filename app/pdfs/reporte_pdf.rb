class ReportePdf < Prawn::Document
	def initialize()
		super()
		teacher = Teacher.all
		teacher.each do |event|
		text event.name
		text "El profesor #{event.name}"
		end
	
end
end