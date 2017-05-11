require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def initialize
  end


#1
  def test_head
    list = LinkedList.new

    assert_nil list.head
  end

#2
  def test_append
    list = LinkedList.new

    list.append("doop")

    assert_equal "doop", list.append("doop")
  end

#3
# require 'pry'; binding.pry
  def test_count
    list = LinkedList.new
    list.append("plop")
    list.append("flop")

    assert_equal "2", list.count
  end
#4
  def test_to_string
    list = LinkedList.new
    list.append("plop")
    list.append("flop")

    assert_equal "plop flop", list.to_string
  end
#5
  def test_prepend
    list = LinkedList.new
    list.prepend("Hello world")


    assert_equal list.include?("")
  end
end
