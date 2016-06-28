require "rubrb/utils"
require "rubrb/methods_array"
require "rubrb/version"

##
# Rubrb - top level module

module Rubrb
  ##
  # Run a test
  #
  # @param file [Array] file names or partial names
  #
  # @example
  #      require 'rubrb'
  #      Rubrb.test(file: 'tests/testthat/test-config-fxns.R')
  #      Rubrb.test(file: 'config-fxns')
  #      Rubrb.test(file: 'config')
  def self.test(file:)
    if file.nil? or file.length == 0
      raise 'please give file name or partial file name'
    end
    # pkg = get_pkg_name()
    files = list_files()
    files = file.collect { |x| files.guess_file_name(x)[0] }.compact
    case files
    when files.length == 0
      raise 'zero files matched: change your search string'
    else
      puts 'using:'
      files.each { |x|
        puts '  ' + x
      }
    end

    str = "Rscript -e \"Sys.setenv(NOT_CRAN = 'true');
      library(devtools); load_all(); library(testthat);
      %s\"" % files.map { |x| "test_file('%s') " % x }.join('; ')
    str = str.gsub(/\n/, '')
    # puts str
    system(str)
  end

end
