
class MasterList
	
	def initialize(list_items)
		@list_items=list_items
	end
	
	def all
		@list_items
	end
	
	def incomplete
		@list_items.select do |i|
			i.status_of_task==false
		end
	end
	
end