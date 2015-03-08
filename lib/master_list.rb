

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
  
  	def incomplete
		@list_items.select do |i|
			i.status_of_task==false
		end
	end
	
	def filter_by_date(day)
		@list_items.select do |i|
			i.due_date==day
		end
	end
	
	def search_by_term(term)
		@list_items.select do |i|
			i.task.include?(term)
		end
	end
  
  def show_list
    return @list_items.complete
    return "~~~~~~~~~~~~~~~~~~~~"
    return @list_items.incomplete    
  end
	
end