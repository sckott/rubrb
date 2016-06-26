# Array methods
class Array
  def guess_file_name(file)
  	self.keep_if { |z| !!z.match(/#{file}/) }
	end
end
