require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    elsif @head.next_node == nil
      @head.next_node = Node.new(surname)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
    end
  end

  def count
    if @head == nil
      0
    elsif @head.next_node == nil
      1
    else
      array = Array.new
      current_node = @head
      array << current_node.surname
      until current_node.next_node == nil
        current_node = current_node.next_node
        array << current_node.surname
      end
      array.count
    end
  end

  def to_string
    current_node = @head
    if count == 1
      family_sentence(@head)
    else
      binding.pry
      until current_node.next_node == nil
        concat(family_sentence(@head), current_node.next_node)
        current_node = current_node.next_node
      end
    end
  end

  private

  def family_sentence(node)
    'The ' + node.surname + ' Family'
  end

  def concat(sentence, node)
    sentence + ', followed by ' + family_sentence(node)
  end
end
