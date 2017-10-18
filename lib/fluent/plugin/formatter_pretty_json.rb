# coding: utf-8
require 'fluent/plugin/formatter'

module Fluent
  module Plugin
    class PrettyJsonFormatter < Formatter
      Fluent::Plugin.register_formatter('pretty_json', self)

      def configure(conf)
        super
      end

      def format(tag, time, record)
        "#{JSON.pretty_generate record}\n"
      end
    end
  end
end
