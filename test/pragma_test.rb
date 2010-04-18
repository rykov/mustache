$LOAD_PATH.unshift File.dirname(__FILE__)
require 'helper'

class PragmaTest < Test::Unit::TestCase
  def test_unescaped_by_default
    assert_equal <<-text.chomp, PragmaUnescaped.render

* Bear < Shark
* Bear &lt; Shark
* <h1><b>Awesome</b></h1>
text
  end

  def TODO_implicit_iterator
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

  def TODO_dot_notation
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
