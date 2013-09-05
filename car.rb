class Car
	def initialize
		@fuel = 10
		@distance = 0
		puts "the initialize method is running automatically."	
	end

	def get_info
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas left."		
	end

	def drive(miles_driven)
		testfuel = @fuel - (miles_driven/20.0)
		if testfuel > 0
			@distance = @distance + miles_driven
			@fuel = testfuel
			puts "You drove #{miles_driven} and have #{@fuel} gallons left."
		else
			drivable_distance = @fuel * 20.0
			@distance = @distance + drivable_distance
			@fuel = @fuel - (drivable_distance/20)
			puts "You drove #{drivable_distance} before you ran out of gas. You have #{@fuel} gallons."
		end
	end

	def fuel_up
		fuel_needed = 10 - @fuel
		cost = fuel_needed * 3.5
		puts "You need #{fuel_needed} gallson to fill up your tank. That'll be #{cost} dollars."
		@fuel = @fuel + fuel_needed
	end
 end
