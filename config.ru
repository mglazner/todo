require "sinatra"
require "./app"
require "./lib/master_list"
require "./lib/item"

semi_permanent_list=MasterList.new([
		Item.new("feed the dog","Tuesday",false),
		Item.new("feed the cat","Wednesday",true),
		Item.new("learn to like cannabalism","Friday",false)
		])
	
run App.new(semi_permanent_list)

