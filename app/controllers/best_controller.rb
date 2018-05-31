class BestController < ApplicationController


  # GET /careers
  def index
    score = Resource.paginate(:page => params[:page], per_page:3).order(likes: :desc)
    render json: score

  end

end
