require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new('Corina')
  end

  def test_exists
    assert_instance_of Node, @node
  end

  def test_attributes
    assert_equal 'Corina', @node.surname
    assert_nil @node.next_node
  end
end
