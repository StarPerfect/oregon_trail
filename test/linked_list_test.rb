require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class NodeTest < Minitest::Test
    def setup
      @list = LinkedList.new
    end

    def test_exists
      assert_instance_of LinkedList, @list
    end

    def test_attributes
      assert_nil @head
    end

    def test_append
      @list.append('West')

      assert_equal 'West', @list.head.surname
    end

    def test_count
      assert_equal 0, @list.count

      @list.append('West')

      assert_equal 1, @list.count
    end

    def test_to_string
      @list.append('West')
      
      assert_equal 'The West Family', @list.to_string
    end
end
