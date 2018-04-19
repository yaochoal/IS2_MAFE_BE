class TestsController < ApplicationController
 # before_action :set_comment, only: [:show, :update, :destroy]
require "base64"
  # GET /comments
  def index
    
    @users = User.all
    render json: @users 
   
  end

  # GET /comments/1
  def show

    
  end

  # POST /comments
  def create
   image = Base64.decode64()
    @user = User.search(params["email"]);
     @user.image = params["base64"]
    render json: @user
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
