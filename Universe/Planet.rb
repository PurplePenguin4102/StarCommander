class Planet
	Planet_Types = ["Rocky", "Earth-Like", "High Grav", "Water"]

	attr_accessor :defenses, :population, :size, :infrastructure, :type, :ships_in_orbit, :name, :owner

	def initialize(name)
		@name = name
		@defenses = []
		@infrastructure = []
		@ships_in_orbit = []
		@owner = nil
		@population = rand(1_000..7_000)
		@size = rand(10_000..50_000)
		@type = 
			if @size > 25_000
				"High Grav"
			else
				(Planet_Types - ["High Grav"]).sample
			end
	end

	def to_s()
		inspect
	end

	def inspect()
		ownername = @owner || "nobody"
		%Q(Scanners reveal the #{@type.downcase} planetoid #{@name} owned by #{ownername}::
		Size #{size}km in diameter\tPopulation #{population / 1000.0} billion
		#{@infrastructure.count} known satellites\t#{ships_in_orbit.count} ships orbiting
		)
	end

end
