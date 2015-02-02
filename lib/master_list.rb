
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
	
	def complete
		@list_items.select do |i|
			i.status_of_task==true
		end
	end
	
	def filter_by_date(day)
		temp=""
		@list_items.each do |i|
			if i.due_date==day
					temp<<i.task
			end
		end
		temp	
	end
	
	def search_by_term(term)
		temp=""
		@list_items.each do |i|
			if i.task.include?(term)
				temp<<i.task
			end	
		end
		temp
	end
	
end