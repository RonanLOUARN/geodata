# frozen_string_literal: true

module Geodata
  module Queries
    class Finder
      def find_by(hash)
        result = where(hash)
        result.is_a?(Array) ? result.sample : result
      end

      def where(hash)
        key, value = hash.first
        send(key, value)
      end
    end
  end
end
