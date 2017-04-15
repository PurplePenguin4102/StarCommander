class Battle
	attr_accessor :ships
	attr_accessor :battle_id

	def initialize(id, ships)
		ships.each do |ship| 
			ship.y = rand(100)
			ship.x = rand(100)
			ship.z = rand(100)
		battle_id = id
		end
		@ships = ships
	end

end
