class BestController < ApplicationController
  

  # GET /careers
  def index
    score = Resource.all
    render json: score
  end

end
