require './StarField'

def update_game_state (game_state, player_input)
	puts "Your move has made an effect!!"
	game_state.current_status = "game_over"
	if player_input.downcase == "inspect planets"	
		puts game_state.star_field.get_planet_names
	end
end