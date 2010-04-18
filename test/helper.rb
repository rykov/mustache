require 'test/unit'
require 'pp'

$LOAD_PATH.unshift File.dirname(__FILE__) + '/fixtures'

Dir[File.dirname(__FILE__) + '/fixtures/*.rb'].each do |f|
  require f
end
