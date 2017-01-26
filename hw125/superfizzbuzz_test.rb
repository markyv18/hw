gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'superfizzbuzz'

class SFBTest < Minitest::Test
  def test_it_converts_numbers
    sfb1 = SFB2.new
    assert_equal "Super", sfb1.sfb(7)
  end
end
