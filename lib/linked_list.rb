require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    end
  end

  def count
    if @head == nil
      0
    else
      1
    end
  end

  def to_string
    'The ' + @head.surname + ' Family'
  end
end
