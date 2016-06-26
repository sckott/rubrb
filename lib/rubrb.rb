require "rubrb/version"

##
# Rubrb - top level module

module Rubrb
  extend Configuration

  define_setting :access_token
  define_setting :access_secret

  ##
  # Run a test
  #
  # @param ids [Array] DOIs (digital object identifier) or other identifiers
  #
  # @example
  #      require 'rubrb'
  #      Rubrb.test(file: 'config-fxns')
  #      Rubrb.test(file: 'config')
  def self.test(file:)
    system("Rscript -e \"print('%s')\"" % file)
  end

end
