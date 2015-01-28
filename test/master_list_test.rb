require 'minitest\autorun'
require "master_list"
require "item"

class MasterListTest < MiniTest::Unit::TestCase

  def test_masterlist
		tester=MasterList.new([])
		assert tester
	end
	
	def test_all
		tester=MasterList.new([])
		assert_equal([],tester.all)
	end
	
	def test_incomplete
		item1=Item.new("feed the dog","Tuesday",false)
		item2=Item.new("feed the cat","Wednesday",true)
		tester=MasterList.new([item1,item2])
		assert_equal([item1],tester.incomplete)
	end

end



## DUE FEB 3, extend MasterList, add at least three methods and their tests, suggest: .complete (negation of current method) due by day? (direct comparison), and find by text, (anywhere in string contains keyword?)