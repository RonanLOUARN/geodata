# frozen_string_literal: true

require_relative 'finder'

module Geodata
  module Queries
    class Continent < Finder
      def name(alpha_2_code)
        Geodata::Reference::DATA[:continent_names][alpha_2_code]
      end
    end
  end
end
