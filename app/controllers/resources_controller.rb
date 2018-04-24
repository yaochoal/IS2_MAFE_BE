class ResourcesController < ApplicationController
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
<<<<<<< HEAD
    @resource = current_user.resource.new(resource_params)

    if @resource.save
      ResourceMailer.new_resource(@resource).deliver_now
=======
    @resource = Resource.create(resource_params)

    if @resource.save
    #	ResourceMailer.new_resource(@resource).deliver_now
>>>>>>> SPRINT_REVISION_3
      render json: @resource, status: :created, location: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resources/1
  def update
<<<<<<< HEAD
    if @resource.update(resource_params)
      render json: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
=======
    if(params[:resource])
    @resource.resource = params[:resource]
      @resource.save
      @resource.link = "http://localhost:3000"+@resource.resource.url
      @resource.save
    else
       if @resource.update(resource_params)
         render json: @resource
      else
         render json: @resource.errors, status: :unprocessable_entity
      end
>>>>>>> SPRINT_REVISION_3
    end
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
<<<<<<< HEAD
      params.require(:resource).permit(:name, :link)
=======
      params.require(:resource).permit(:name, :link,:resource,:description)
>>>>>>> SPRINT_REVISION_3
    end
end
