class TestsController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]

  # GET /resources
  #http://localhost:3000/resources?page=1
  def index
    @resources = Resource.paginate(:page => params[:page], per_page:6)

    render json: @resources
  end

  # GET /resources/1
  def show
    render json: @resource
  end

  # POST /resources
  def create
   @resource = Resource.create(name:params[:name],description: params[:description],resource: params[:resource],user_id: params[:user_id])
    @resource.save
    @resource.link = "http://localhost:3000"+@resource.resource.url
    
    if @resource.save
      render json: @resource, status: :created, location: @resource
       #ResourceMailer.new_resource(@resource).deliver_now
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resources/1
  def update
      @resource.update(resource: params[:resource],name: params[:name],description:params[:description],user_id: params[:user_id])
      @resource.save
      @resource.link = "http://localhost:3000"+@resource.resource.url
      @resource.save
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_params
      params.require(:resource).permit(:name, :link,:resource,:description,:user_id)
    end
end
