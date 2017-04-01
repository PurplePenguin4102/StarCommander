require './Requirements'

puts "\e[H\e[2J"

Debug = true

game_state = GameState.new
loop do
	print_game_state(game_state)
	player_input = get_player_input(game_state)
	update_game_state(game_state, player_input)
	evaluate_score
	enemy_input = calculate_enemy_move
	update_game_state(game_state, enemy_input)
	if game_state.current_status == :game_over.to_s
		break
	end
end