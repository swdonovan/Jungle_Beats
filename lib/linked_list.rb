require 'pry'
require './lib/jungle_beat'
class Node
  attr_reader :data,
              :append

  def initialize(data)
    @data       = data
    @next_node  = nil
    @head
    @node_count
    @append
  end

  def next_node
    @head
  end

  def append(input)
    @head = Node.new(input)
  end




end


class LinkedList
  attr_reader :head,
              :node_count,
              :append


  def initialize
    @head         = nil
    @node_count   = Array.new
    @next_node
    @append
  end


                  # :data => [],
                  # :next_node => {}}


  def append(data_in)
    @node_count << data_in
    if @head == nil
      @head = Node.new(data_in)
    else
      @head.append(data_in)
    end
    data_in
  end

  def head
    @head
  end

  def count
    @node_count.length
  end

  def to_string
    node_count.join(" " + " ")
  end

  def prepend(front_insert)
    node_count.unshift(front_insert)
    front_insert
  end

  def next_node
    if @next_node == nil
      @head
    else
      nil
    end
  end

  def insert(position, input)
    node_count.insert(position, input)
    input
  end

  def find(pos, amount_to_include)
    to_where = (pos +(amount_to_include - 1))
    @node_count[pos..to_where].join(" ")
  end

  def include?(input)
    @node_count.include?(input)
  end

  def pop
    @node_count.pop

  end





end









# if @head == nil
#   @head = Node.new(data_in)
# elsif @head.head == nil
#   @head.head = Node.new(data_in)
# elsif @head.head.head == nil
#   @head.head.head = Node.new(data_in)
# end
