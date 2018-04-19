class TeachersController < ApplicationController
	before_action :set_teacher, only: [:show, :update, :destroy]

	# GET /teachers
	#http://localhost:3000/teachers?page=1
	def index
		@teachers = Teacher.all
		#render json: @teachers
	end

	# GET /teachers/1
	def show
	@teacher = Teacher.find(params[:id]) 
		#render json: @teacher#cochino render casi no me dejas hacer pdf's
		respond_to do |format|
			format.html
			format.pdf do
				pdf = ReportePdf.new(@teacher)#Prawn::Document.new#
				send_data pdf.render, filename: "Reporte_#{@teacher_number}.pdf",
															type: "application/pdf",
															disposition: "inline"
			end
		end	
	end
end