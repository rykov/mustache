$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'mustache'

class ImplicitContext < Mustache
  self.path = File.dirname(__FILE__)

  def self.data
    [
      { :prod_id => "123", :sku => "A", :price => 0.99 },
      { :prod_id => "456", :sku => "B", :price => 1.99 },
      { :prod_id => "789", :sku => "C", :price => 2.99 }
    ]
  end
end

if $0 == __FILE__
  puts ImplicitContext.render(ImplicitContext.template, ImplicitContext.data)
end
