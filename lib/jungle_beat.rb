require "./lib/linked_list"

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def list
    @list
  end

  def append(input)
    input_new = input.split(/ /)
    input_new.each do |app|
      @list.append(app)
    end
    input
  end

  def count
    @list.count
  end

  def play
    sound = @list.to_string
    `say -r 500 -v Boing #{sound}`
  end



end
