class CommentcleanerJob < ApplicationJob
  queue_as :default

  def perform(*args)
  	lista =Commentcourse.all
  	lista.each do |elemento|
  		if (Scorecommentcourse.where(negative: 1, commentcourse_id: elemento.id).size > 5)
  		elemento.destroy
    	end
  	end
  	
  end
end
