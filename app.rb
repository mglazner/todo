
class App < Sinatra::Base

	attr_reader :mlist

	def initialize(mlist)
		super
		@mlist=mlist
	end

	get("/") do 	
		put mlist
	end
	
	# get("/:day") do
		# params[:day]
	# end

	
end

# HW make the website print out the text of the items--with a header, not html: yet, print out two lists, a complete one and an an incomplete one. simultaneously. on the same page, yo.