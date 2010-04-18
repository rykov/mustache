$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'mustache'

class PragmaUnescaped < Mustache
  self.path = File.dirname(__FILE__)

  def vs
    "Bear < Shark"
  end

  def title
    "<b>Awesome</b>"
  end
end

if $0 == __FILE__
  puts PragmaUnescaped.to_html
end
