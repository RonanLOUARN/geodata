# frozen_string_literal: true

module Geodata
  class Reference
    DATA = YAML.load_file(File.join(File.dirname(__FILE__), '..', 'locales', 'geodata.yml'))
  end
end