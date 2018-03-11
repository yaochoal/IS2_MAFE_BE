class ScorecommentsController < ApplicationController
  before_action :set_scorecomment, only: [:show, :update, :destroy]

  # GET /scorecomments
  def index
    @scorecomments = Scorecomment.all

    render json: @scorecomments
  end

  # GET /scorecomments/1
  def show
    render json: @scorecomment
  end

  # POST /scorecomments
  def create
    @scorecomment = Scorecomment.new(scorecomment_params)

    if @scorecomment.save
      render json: @scorecomment, status: :created, location: @scorecomment
    else
      render json: @scorecomment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scorecomments/1
  def update
    if @scorecomment.update(scorecomment_params)
      render json: @scorecomment
    else
      render json: @scorecomment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scorecomments/1
  def destroy
    @scorecomment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorecomment
      @scorecomment = Scorecomment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scorecomment_params
      params.require(:scorecomment).permit(:positive, :negative)
    end
end
