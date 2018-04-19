class TestsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
   
  end

  # GET /comments/1
  def show
    
  end

  # POST /comments
  def create
    
  end

  # PATCH/PUT /comments/1
  def update
    
  end

  # DELETE /comments/1
  def destroy
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = User.find(params[:id])
    end

   
end
