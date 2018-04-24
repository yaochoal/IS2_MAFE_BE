class TeacherspdfsController < ApplicationController
  before_action :set_teacher, only: [:show, :update, :destroy]

  # GET /teachers
  #http://localhost:3000/teachers?page=1
  def index
    teacher = Teacher.find(1) 
    #render json: @teacher
  respond_to do |format|
  format.html
    format.pdf do
    pdf = ReportePdf.new#Prawn::Document.new#
    send_data pdf.render, filename: "Reporte.pdf",
                type: "application/pdf",
                disposition: "inline"
       end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def teacher_params
      params.require(:teacher).permit(:name, :description)
    end
end