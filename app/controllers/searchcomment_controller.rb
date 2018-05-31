class SearchcommentController < ApplicationController

  # Post /search
  def create
    if params[:comment_teachers]
    	@search = Commentteacher.find(params[:id])
    	render json: @search
    end
    if params[:comment_courses]
    	@search = Commentcourse.find(params[:id])
    	render json: @search
    end
    if params[:comment_resources]
    	@search = Commentresource.find(params[:id])
    	render json: @search
    end
  end

end
