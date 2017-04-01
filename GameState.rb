class GameState
	attr_accessor :current_status, 
	:players, 
	:battles_running,
	:whose_turn,
	:turn_count,
	:player1,
	:player2,
	:star_field,
	:lore_wizard

	def initialize
		@players = 2
		@player1 = Player.new :prompt_name
		@player2 = Player.new
		@battles_running = []
		@whose_turn = 1
		@turn_count = 1
		@star_field = StarField.new
		@lore_wizard = LoreWizard.new
	end

	def make_players (plr_name = "")
		@player1 = Player.new(plr_name)
		@player2 = Player.new
	end

	def inspect
		"Players :: #{@players}\nSystem :: #{@star_field}\nPlayer 1 #{@player1}\nPlayer 2 #{@player2}"
	end

	def to_s
		inspect
	end
end