puts "class Train"
class Train
	def initialize
		@rang_speed = (0..110)
		@speed = 0
		@position = 0		
	end

	def move metrs
		
	end

	def gain km_h	
	
	end

	def reduce km_h
		
	end

	def to_s
		"поезд находится на позиции #{@position} и движется со скоростью #{@speed}"
	end
end

puts train=Train.new()