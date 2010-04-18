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

    # The {{% UNESCAPED}} pragma swaps the meaning of the {{normal}}
    # and {{{unescaped}}} Mustache tags. That is, once this pragma is
    # activated the {{normal}} tag will not be escaped while the
    # {{{unescaped}}} tag will be escaped.
    #
    # Pragmas apply only to the current template. Partials, even those
    # included after the {{% UNESCAPED}} call, will need their own
    # pragma declaration.
    #
    # This may be useful in non-HTML Mustache situations.
    def unescaped(generator, options = {})
      (class << generator; self end).instance_eval do
        alias_method :off_utag, :on_utag
        alias_method :off_etag, :on_etag

        alias_method :on_utag, :off_etag
        alias_method :on_etag, :off_utag
      end
    end
  end
end
