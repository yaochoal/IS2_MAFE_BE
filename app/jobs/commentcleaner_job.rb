class CommentcleanerJob < ApplicationJob
  queue_as :default

  def perform(*args)
  	lista =Commentcourse.all
  	lista.each do |elemento|
  		if (Scorecommentcourse.where(negative: 1, commentcourse_id: elemento.id).size > 5)
  		elemento.destroy
    	end
  	end
    lista1 =Commentteacher.all
    lista1.each do |elemento|
      if (Scorecommentteacher.where(negative: 1, commentteacher_id: elemento.id).size > 5)
      elemento.destroy
      end
    end
    lista2 =Commentresource.all
    lista2.each do |elemento|
      if (Scorecommentresource.where(negative: 1, commentresource_id: elemento.id).size > 5)
      elemento.destroy
      end
    end

  	
  end
end
