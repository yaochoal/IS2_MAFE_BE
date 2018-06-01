class SentimentCommentJob < ApplicationJob
	#SentimentCommentJob.perform_later
  queue_as :urgent
  require "google/cloud/language"
  def perform(*args)
    language = Google::Cloud::Language.new 
    lista =Commentcourse.all
  	lista.each do |elemento|
  		if (elemento.sentiment == nil)
  		text = elemento.comment
  		response = language.analyze_sentiment content: text, type: :PLAIN_TEXT
  		sentiment = response.document_sentiment
  		elemento.sentiment = sentiment.score
  		elemento.save
  		puts "Text: #{text}"
  	    puts "Score: #{sentiment.score}, #{sentiment.magnitude}"
    	end
  	end
  	lista1 =Commentteacher.all
  	lista1.each do |elemento|
  		if (elemento.sentiment == nil)
  		text = elemento.comment
  		response = language.analyze_sentiment content: text, type: :PLAIN_TEXT
  		sentiment = response.document_sentiment
  		elemento.sentiment = sentiment.score
  		elemento.save
  		puts "Text: #{text}"
  	    puts "Score: #{sentiment.score}, #{sentiment.magnitude}"
    	end
  	end
  	lista2 =Commentresource.all
  	lista2.each do |elemento|
  		if (elemento.sentiment == nil)
  		text = elemento.comment
  		response = language.analyze_sentiment content: text, type: :PLAIN_TEXT
  		sentiment = response.document_sentiment
  		elemento.sentiment = sentiment.score
  		elemento.save
  		puts "Text: #{text}"
  	    puts "Score: #{sentiment.score}, #{sentiment.magnitude}"
    	end
  	end
  end
end
