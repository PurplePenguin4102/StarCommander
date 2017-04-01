def print_game_state (game)
	if (game.turn_count == 1)
		puts_term game.lore_wizard.get_intro(game)
	end
	puts game
	puts "===================="
end