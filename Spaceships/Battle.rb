class Battle
	attr_accessor :ships

	def initialize(ships)
		ships.each {|ship| ship.y = rand(100)}
		@ships = ships
	end

end