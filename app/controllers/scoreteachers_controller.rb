class ScoreteachersController < ApplicationController
  before_action :set_scoreteacher, only: [:show, :update, :destroy]

  # GET /scoreteachers
  def index
    @scoreteachers = Scoreteacher.all

    render json: @scoreteachers
  end

  # GET /scoreteachers/1
  def show
    render json: @scoreteacher
  end

  # POST /scoreteachers
  def create
    @scoreteacher = Scoreteacher.new(scoreteacher_params)

    if @scoreteacher.save
      render json: @scoreteacher, status: :created, location: @scoreteacher
    else
      render json: @scoreteacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scoreteachers/1
  def update
    if @scoreteacher.update(scoreteacher_params)
      render json: @scoreteacher
    else
      render json: @scoreteacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scoreteachers/1
  def destroy
    @scoreteacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoreteacher
      @scoreteacher = Scoreteacher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scoreteacher_params
      params.require(:scoreteacher).permit(:score, :votes)
    end
end
