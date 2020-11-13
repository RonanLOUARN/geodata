# frozen_string_literal: true

require_relative 'finder'

module Geodata
  module Queries
    class Country < Finder
      def alpha_2_code(country_alpha_2_code)
        Geodata::Reference::DATA[:base][country_alpha_2_code]
      end

      def alpha_3_code(country_alpha_3_code)
        Geodata::Reference::DATA[:base][Geodata::Reference::DATA[:by_alpha_3_code][country_alpha_3_code]]
      end

      def numeric_code(country_numeric_code)
        Geodata::Reference::DATA[:base][Geodata::Reference::DATA[:by_numeric_code][country_numeric_code]]
      end

      def continent_code(continent_alpha_2_code)
        return nil unless Geodata::Reference::DATA[:by_continent_code][continent_alpha_2_code]

        Geodata::Reference::DATA[:by_continent_code][continent_alpha_2_code].map do |country_alpha_2_code|
          Geodata::Reference::DATA[:base][country_alpha_2_code]
        end
      end
    end
  end
end
