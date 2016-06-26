require "rubrb/version"

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
    files = list_files()
    file = files.guess_file_name(file)
    system("Rscript -e \"Sys.setenv(NOT_CRAN = 'true'); library(request); library(testthat); test_file('%s')\"" % file)
  end

  private

  def guess_file_name(x)
    x.keep_if { |z| !!z.match(/test-/) }
  end

  def list_files
    begin
      files = dir_files('tests/testthat')
      path = files.keep_if { |z| !!z.match(/test-/) }
      return path
    rescue Exception => e
      puts 'Directory tests/testthat does not exist'
    end
  end

  def dir_files(x)
    Dir.entries(x).select { |entry|
      !File.directory? File.join(x, entry) and !(entry =='.' || entry == '..')
    }.map { |z|
      x + '/' + z
    }
  end

end
