require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_what_is_head
    list = LinkedList.new

    assert_nil list.head

  end


  def test_append
    skip
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end

  def test_head_nextnode
    skip
    list = LinkedList.new

    assert_equal nil, list.head.next_node

  end

  def test_count
    skip
    list = LinkedList.new

    assert_equal 1, list.count

  end

end
