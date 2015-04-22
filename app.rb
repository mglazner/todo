

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
	
  get '/templated' do
    erb :template 
  end
  
end



# HW convert my output using an erb template as built into Sinatra, so no binding

# .each over an array returns the original array
# .map returns an array of the things you wanted out of the original array