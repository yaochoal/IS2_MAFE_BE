class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :update, :destroy]

  # GET /teachers
  #http://localhost:3000/teachers?page=1
  def index
    @teachers = Teacher.paginate(:page => params[:page], per_page:6)
    render json: @teachers
  end

  # GET /teachers/1
  def show
	teacher = Teacher.find(params[:id]) 
    #render json: @teacher#cochino render casi no me dejas hacer pdf's
	respond_to do |format|
	format.html
		format.pdf do
		pdf = ReportePdf.new#Prawn::Document.new#
		#pdf.text Teachers.id.to_s
		#pdf.text Teacher.name.to_s
		#pdf.text Teacher.description.to_s
		send_data pdf.render, filename: "Reporte.pdf",
							  type: "application/pdf",
							  disposition: "inline"
		
		end
		
		end
	
  end

  # POST /teachers
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      render json: @teacher, status: :created, location: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teachers/1
  def update
    if @teacher.update(teacher_params)
      render json: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teachers/1
  def destroy
    @teacher.destroy
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