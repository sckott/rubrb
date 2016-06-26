require 'yaml'

def get_pkg_name
  begin
    desc = YAML.load_file('DESCRIPTION')
    return desc['Package']
  rescue Exception => e
    puts e
  end
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
