# frozen_string_literal: true

module Geodata
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def copy_initializer
        template 'geodata.rb', 'config/initializers/geodata.rb'
        template 'geodata.yml', 'config/locales/geodata.yml'
      end
    end
  end
end