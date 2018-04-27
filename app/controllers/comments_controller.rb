class CommentsController < ApplicationController
  
  # GET /comments
  def index
    
  end

  # GET /comments/1
  def show
  
  end

  # POST /comments
  def create
    user = User.find(params[:user_id])
    CommentMailer.new_comment(user, @comment).deliver_now
    
  end

  # PATCH/PUT /comments/1
  def update
   
  end

  # DELETE /comments/1
  def destroy
   
  end

  
end
