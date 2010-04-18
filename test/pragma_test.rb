$LOAD_PATH.unshift File.dirname(__FILE__)
require 'helper'

class PragmaTest < Test::Unit::TestCase
  def test_implicit_iterator
    assert_equal <<-text, Pragma.render

* Chris
* Mark
* Scott

* Chris
* Mark
* Scott

* Chris
* Mark
* Scott
text
  end

  def test_dot_notation
    assert_equal <<-text.chomp, PragmaDotNotation.render

* Chris Firescythe
* 24
* Cincinnati, OH
* Cincinnati, OH
* Cincinnati, OH
* Normal
text
  end
end
