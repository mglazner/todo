require 'minitest\autorun'
require "item"

class ItemTest < MiniTest::Unit::TestCase

	def test_item
		tester=Item.new("feed the dog","Tuesday",false)
		assert tester
	end

	def test_task
		tester=Item.new("feed the dog","Tuesday",false)
		assert_equal("feed the dog",tester.task)
	end
	
	def test_due_date
		tester=Item.new("feed the dog","Tuesday",false)
		assert_equal("Tuesday",tester.due_date)
	end
	
		def test_status_of_task
		tester=Item.new("feed the dog","Tuesday",false)
		assert_equal(false,tester.status_of_task)
	end
	
end
