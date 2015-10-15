# encoding: utf-8
puts "class Train"
class Train
	def initialize
		@rang_speed = (0..110)
		@speed = 0 # текущая скорость
		@delta = 10 # шаг изменения скорости
		@move = :stop # направление движения поезда
	end

	def move direct #направление движения поезда (вперед назад)

		if direct == :forward
				if 		@move == :forward
					gain
				elsif 	@move == :stop
					gain
					@move = :forward
				elsif 	@move == :backward
					reduce
				end

		elsif direct == :backward
				if 		@move == :forward
					reduce
				elsif 	@move == :stop
					gain
					@move = :backward
				elsif 	@move == :backward
					gain
				end
		else
			puts "неверное направление"
		end
		self
	end

	def gain #увеличение скорости

		new_speed = @speed + @delta
		if @rang_speed === new_speed
			@speed = new_speed

		else
			@speed = @rang_speed.max 

		end
	end

	def reduce	#уменьшение скорости

		new_speed = @speed - @delta
		if @rang_speed === new_speed
			@speed = new_speed

		else
			@speed = @rang_speed.min 

			@move = :stop
		end
	end

	def to_s		#состояние поезда
		"поезд движется #{@move} со скоростью #{@speed}"
	end
end

puts train=Train.new()
puts train.move :forwa
puts train.move :forward
puts train.move :forard
puts train.move :forward
puts train.move :forward
puts train.move :backward
puts train.move :backward
puts train.move :backward
puts train.move :backward
puts train.move :backward
puts train.move :backward
sleep 5