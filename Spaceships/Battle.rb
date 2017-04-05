class Battle
	attr_accessor :ships

	def initialize(ships)
		ships.each do |ship| 
			ship.y = rand(100)
			ship.x = rand(100)
			ship.z = rand(100)
		end
		@ships = ships
	end

end
