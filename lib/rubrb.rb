require "rubrb/version"
require "rubrb/methods_array"
require "rubrb/utils"

##
# Rubrb - top level module

module Rubrb
  ##
  # Run a test
  #
  # @param ids [Array] DOIs (digital object identifier) or other identifiers
  #
  # @example
  #      require 'rubrb'
  #      Rubrb.test(file: 'tests/testthat/test-config-fxns.R')
  #      Rubrb.test(file: 'config-fxns')
  #      Rubrb.test(file: 'config')
  def self.test(file:)
    #system("Rscript -e \"print('%s')\"" % file)
    pkg = get_pkg_name()
    files = list_files()
    files = files.guess_file_name(file)
    case files
    when files.lenth == 0
      raise 'zero files matched: change your search string'
    when files.lenth > 1
      raise 'more than one file matched: be more specific'
    else
      puts 'using ' + files[0]
    end
    system("Rscript -e \"Sys.setenv(NOT_CRAN = 'true'); library(%s); library(testthat); test_file('%s')\"" % [pkg, file])
  end

end
