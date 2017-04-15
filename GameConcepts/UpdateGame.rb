def update_game_state (game_state, player_input)
	puts "Your move has made an effect!!"
	if player_input == :END_GAME
		game_state.current_status = :game_over
		return
	end
	
	case player_input.action
	when :INSPECT_ALL
		puts game_state.star_field.get_planet_names
	when :SCAN_ALL
		(Scanner.new).scan_all(game_state)
	when :END_TURN
		game_state.whose_turn = 2
	when :SCAN_PLANET
		(Scanner.new).scan_planet(player_input.noun, game_state.star_field)
	end
end
