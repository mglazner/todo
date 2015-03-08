

class App < Sinatra::Base

	attr_reader :mlist

	def initialize(mlist)
		super
		@mlist=mlist
	end
   
  get '/' do
    attempt=("List of things: <br/><br/>Completed: <br/>")
    (@mlist.complete).map do |i|
      attempt<<(i.task+"<br/>")
    end
    attempt<<("~~~~~~~~~~~~~~~~~<br/>Incomplete: <br/>")
    (@mlist.incomplete).map do |i|
      attempt<<(i.task+"<br/>")
    end
    attempt
  end
  
	# get("/:day") do
		# params[:day]
	# end
	
end



# HW make the website print out the text of the items--with a header, not html: yet, print out two lists, a complete one and an an incomplete one. simultaneously. on the same page, yo.

# .each over an array returns the original array
# .map returns an array of the things you wanted out of the original array