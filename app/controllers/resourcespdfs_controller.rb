class ResourcespdfsController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]

  # GET /resources
  #http://localhost:3000/resources?page=1
  def index
    @resource = Resource.find(1) 
    respond_to do |format|
  format.html
    format.pdf do
    pdf = ResourPdf.new#Prawn::Document.new#
    #pdf.text "hola mundo"
    send_data pdf.render, filename: "Resourse.pdf",
                type: "application/pdf",
                disposition: "inline"
    end
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_params
      params.require(:resource).permit(:name, :link)
    end
end
