class CommentsController < ApplicationController
  
  # GET /comments
  def index
    
  end

  # GET /comments/1
  def show
  
  end

  # POST /comments
  def create
    if params[:course_id]
      @comment = Commentcourse.create(user_id: params[:user_id],course_id: params[:course_id],comment: params[:comment])
      if @comment.save
      render json: @comment, status: :created
      else
      render json: @comment.errors, status: :unprocessable_entity
      end
    end

    if params[:teacher_id]
      @comment = Commentteacher.create(user_id: params[:user_id],teacher_id: params[:teacher_id],comment: params[:comment])
      if @comment.save
      render json: @comment, status: :created
      else
      render json: @comment.errors, status: :unprocessable_entity
      end
    end

    if params[:resource_id]
      @comment = Commentresource.create(user_id: params[:user_id],resource_id: params[:resource_id],comment: params[:comment])
      if @comment.save
      render json: @comment, status: :created
      else
      render json: @comment.errors, status: :unprocessable_entity
      end
    end

    #user = User.find(params[:user_id])
    #CommentMailer.new_comment(user, @comment).deliver_now
    
  end

  # PATCH/PUT /comments/1
  def update
   
  end

  # DELETE /comments/1
  def destroy
   
  end

  
end
