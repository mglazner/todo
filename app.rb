require "sinatra"

class App < Sinatra::Base

  get("/") do 	
		"hello, world!"
	end
	
	get("/:day") do
		params[:day]
	end

	
	
end