# Create Car and Engine classes.
# Both of them make their own noises.


# When Car makes noise the output is the noise of the Car plus the noise of the engine.


# Create different types of engines that should work with any car.

class Engine
	def initialize 
		@noise = noise
	end
	def mini
		@noise = "piribi"
	end
	def porsche
		@noise = "popopo"
	end
end

engineMini = Engine.new.mini
enginePorsche = Engine.new.porsche

class Car
	def initialize(engine)
		@engine = engine
	end
	def make_noise
		puts "prrrrrr" + @engine.noise
	end
end

mini = Car.new(engineMini)
porsche = Car.new(enginePorshe)

mini.make_noise
porsche.make_noise



###################

# class Car
#     def initialize(sound, engine)
#         @noise = sound
#         @engine = engine
#     end

#     def make_noise
#         @noise + @engine.make_noise
#     end
# end

# class Engine
#     def initialize(sound, cilinders)
#         @noise = sound
#         @cilinders = cilinders
#     end

#     def make_noise
#         @noise
#     end
# end


# motor_chungo = Engine.new("jbjkbkj", "1")
# motor_f1 = Engine.new("BBBBBBBBBRRRRRRRRRRRRRRMMMMM", "16")
# cuatrolatas = Car.new ("ñikiñiki", motor_chungo)
# f1alonso = Car.new ("zzzzzss", motor_chungo)
# maybach = Car.new ("zzzzzss", motor_f1)










#################################














