require "sinatra"
require "./app"
require "./lib/master_list"
require "./lib/item"
require "date"

semi_permanent_list=MasterList.new([
		Item.new("feed the dog","Tuesday",false),
		Item.new("feed the cat","Wednesday",true),
		Item.new("learn to like cannibalism","Friday",false),
		Item.new("walk the snakes","Friday",true),
    Item.new("go to the gym","Monday",false),
    Item.new("do the dishes","Thursday",true)
    ])
	
run App.new(semi_permanent_list)

