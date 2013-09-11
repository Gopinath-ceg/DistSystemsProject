require 'drb'

counter = DRbObject.new nil, 'druby://:9000'
# nil above specified localhost. You can specify another ip address
# Port can be changed from 9000. Change in server accordingly
puts "Enter the file for script to be judged"
s= gets.chomp
a=""
File.open(s,"r+") do |aFile|
	content=aFile.sysread 20
	a = a+content
end
x = counter.writing a
puts "The return value is #{x}"
