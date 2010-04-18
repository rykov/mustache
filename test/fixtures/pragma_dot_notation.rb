$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'mustache'

class PragmaDotNotation < Mustache
  self.path = File.dirname(__FILE__)

  def person
    return {
      :name => OpenStruct.new(:first => 'Chris', :last => 'Firescythe'),
      :age  => 24,
      :hometown => {
        :city  => "Cincinnati",
        :state => "OH"
      }
    }
  end

  def normal
    "Normal"
  end
end

if $0 == __FILE__
  puts PragmaDotNotation.to_html
end
