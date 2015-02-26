# -*- coding : utf-8 -*-
require "pebbles/roconize/version"

module Pebbles
  module Roconize
    def roconized?
      @roconized || false
    end

    def roconize
      @roconized = true
    end

    def deroconize
      @roconized = false
    end
  end
end

Object.send(:include, Pebbles::Roconize)

