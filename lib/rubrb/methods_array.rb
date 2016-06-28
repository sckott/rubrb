# Array methods
class Array
  def guess_file_name(file)
  	self.select { |z| !!z.match(/#{file}/) }
	end
end
