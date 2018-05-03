#require "open-uri"
require 'prawn-graph'


class ResourPdf < Prawn::Document
	def initialize()
	series = []
  series << Prawn::Graph::Series.new([4,9,3,2,1,6,2,8,2,3,4,9,2],  title: "A label for a series", type: :bar)
  series << Prawn::Graph::Series.new([5,4,3,2,7,9,2,8,7,5,4,9,2],  title: "Another label", type: :line, mark_average: true, mark_minimum: true)
  series << Prawn::Graph::Series.new([1,2,3,4,5,9,6,4,5,6,3,2,11], title: "Yet another label", type: :bar)
  series << Prawn::Graph::Series.new([1,2,3,4,5,12,6,4,5,6,3,2,9].shuffle, title: "One final label", type: :line, mark_average: true, mark_maximum: true)

  xaxis_labels = ['0900', '1000', '1100', '1200', '1300', '1400', '500', '1600', '1700', '1800', '1900', '2000', '2100']

		super()
		#image open("https://image.ibb.co/mRbXsH/logo.png"), :width => 350
		graph series, width: 500, height: 200, title: "A Title for the chart", at: [10,700], xaxis_labels: xaxis_labels
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
