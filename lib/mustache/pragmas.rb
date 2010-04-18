class Mustache
  # Raised when an unknown pragma is encountered in a Mustache
  # template, at the generation stage.
  class UnknownPragma < RuntimeError
    attr_accessor :message

    def initialize(name)
      @message = "Unknown Pragma: #{name}"
    end

    def to_s
      message
    end
  end

  # Pragmas are macro-like directives that, when invoked, change the
  # behavior or Syntax of Mustache.
  #
  # They should be considered extremely experimental. Most likely
  # their implementation will change in the future.
  module Pragmas
    extend self
  end
end
