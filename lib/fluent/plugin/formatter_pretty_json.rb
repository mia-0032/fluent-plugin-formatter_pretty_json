# coding: utf-8

module Fluent
  module TextFormatter
    class PrettyJsonFormatter < Formatter
      Plugin.register_formatter('pretty_json', self)

      include Configurable
      include HandleTagAndTimeMixin

      def configure(conf)
        super
      end

      def format(tag, time, record)
        "#{JSON.pretty_generate record}\n"
      end
    end
  end
end
