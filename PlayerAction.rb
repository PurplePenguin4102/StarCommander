class PlayerAction
	attr_accessor :raw_input, :action, :verb, :noun

	def initialize(params = {})
		@raw_input =params.fetch(:raw_input, "Invalid")
		@action = params.fetch(:action, :DO_NOTHING)
		@verb = params.fetch(:verb, :DO)
		@noun = params.fetch(:noun, :NOTHING)
	end
end

#verbs
:DO
:BUILD
:SCAN
:INSPECT #alias for "look at"

#nouns
:PLANET
:SHIP
:STAR
:ALL
:NOTHING