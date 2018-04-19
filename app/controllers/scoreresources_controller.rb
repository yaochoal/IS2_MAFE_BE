class ScoreresourcesController < ApplicationController
  before_action :set_scoreresource, only: [:show, :update, :destroy]

  # GET /scoreresources
  def index
    @scoreresources = Scoreresource.all
    render json: @scoreresources
  end

  # GET /scoreresources/1
  def show
    render json: @scoreresource
  end

  # POST /scoreresources
  def create
    @scoreresource = Scoreresource.new(scoreresource_params)

    if @scoreresource.save
      render json: @scoreresource, status: :created, location: @scoreresource
    else
      render json: @scoreresource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scoreresources/1
  def update
    if @scoreresource.update(scoreresource_params)
      render json: @scoreresource
    else
      render json: @scoreresource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scoreresources/1
  def destroy
    @scoreresource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoreresource
      @scoreresource = Scoreresource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scoreresource_params
      params.require(:scoreresource).permit(:score, :votes)
    end
end
