# frozen_string_literal: true

require 'geodata/version'
require 'geodata/queries/country'
require 'geodata/queries/continent'
require 'geodata/errors/constant'

module Geodata
  def self.const_missing(constant_name)
    Geodata::Queries.const_get(constant_name).new
  rescue
    raise Errors::Constant, "Constant #{constant_name} does not exist."
  end
end
