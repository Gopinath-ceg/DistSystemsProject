require 'drb'

class Counter
	attr_reader :value

	def initialize
		@value = 0
	end

	def writing a
		@value += 1
		x = "tmp/abc"+@value.to_s+".sh"
		File.open(x,"w") do |aFile|
			   aFile.syswrite(a)
		end
		a = `#{"sh "+x}`
		return a
	end
end

DRb.start_service 'druby://:9000', Counter.new
puts "Server running at #{DRb.uri}"

trap("INT") { DRb.stop_service }
DRb.thread.join
