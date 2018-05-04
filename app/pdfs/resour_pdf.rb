#require "open-uri"
require 'squid'


class ResourPdf < Prawn::Document
	def initialize()
		super()
		#image open("https://image.ibb.co/mRbXsH/logo.png"), :width => 350
		data = {likes: {1 => 20, 2 => 46,  3=> 20.15},
				dislikes: {1 => 80, 2 => 54,  3=> 79.85}}
		chart data, colors: %w(e7a13d bc2d30), labels:true,format: :percentage
		text "        "
		text "        "
		text "        "
		text "Los recursos de las materias clasificadas en nuestra base de datos son: ", :size => 20, :inline_format => true, :color => '070917'
		text "        "
		resources = Resource.all
		resources.each do |resoo|
		text "#{resoo.id}  #{resoo.name}", :size => 18, :inline_format => true, :color => '252c79'
		text "Link de descarga #{resoo.link }",:size => 14, :inline_format => true, :color => '13173e'
		
		end
		
end
end