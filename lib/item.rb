
class Item
	
	def initialize(task,due_date,status_of_task)
		@task=task	
		@due_date=due_date
		@status_of_task=status_of_task
	end
	
	def task
		@task	## same as attr_reader :task, :status_of_task, :due_date
	end
	
	def due_date
		@due_date
	end
	
	def status_of_task
		@status_of_task
	end
	
	end

