class SearchController < ApplicationController

  # Post /search
  def create
    if params[:teacher_name]
    	palabra = params[:teacher_name]
        likes = params[:likes]
    	@search = Teacher.search("%#{palabra}%",likes)
    	render json: @search
    end
    if params[:course_name]
    	palabra = params[:course_name]
        likes = params[:likes]
    	@search = Course.search("%#{palabra}%",likes)
    	render json: @search
    end
    if params[:resource_name]
    	palabra = params[:resource_name]
        likes = params[:likes]
    	@search = Resource.search("%#{palabra}%",likes)
    	render json: @search
    end
  end

end
