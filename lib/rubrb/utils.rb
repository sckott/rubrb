require 'yaml'
# require 'safe_yaml'
# SafeYAML::OPTIONS[:default_mode] = :safe

def get_pkg_name
  begin
    desc = get_description
    return desc['Package']
  rescue Exception => e
    puts e
  end
end

def get_description
  desc = YAML.load_file('DESCRIPTION')
  puts 'using package: ' + desc['Package']
  return desc
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
