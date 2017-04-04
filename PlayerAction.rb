class PlayerAction
	attr_accessor :raw_input, :action, :verb, :noun

	def initialize(params = {})
		@raw_input =params.fetch(:raw_input, "Invalid")
		@action = params.fetch(:action, :DO_NOTHING)
		@verb = params.fetch(:verb, :DO)
		@noun = params.fetch(:noun, :NOTHING)
	end

	def to_s
		"Player's action :: #{@raw_input}, #{@action}, #{@verb}, #{@noun}"
	end
end