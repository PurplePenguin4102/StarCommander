require './Requirements'

puts "\e[H\e[2J"

Debug = true
music_player = MusicPlayer.new

if music_player.is_valid?
	music_player.play_music
end

game_state = GameState.new

if Debug
	game_state.player1.ships << Spaceship.new
	game_state.player1.ships[0].name = "Hellraiser"
	game_state.player1.ships[0].designation = "Cruiser"
	game_state.player2.ships << Spaceship.new
	game_state.player2.ships[0].name = "Galileo"
	game_state.player2.ships[0].designation = "Cruiser"
	battle = Battle.new [game_state.player1.ships[0], game_state.player2.ships[0]]
	game_state.battles_running << battle
end

loop do
	print_game_state(game_state)

	while game_state.whose_turn == 1
		player_input = get_player_input(game_state, music_player)
		update_game_state(game_state, player_input)
	end
	evaluate_score
	enemy_input = calculate_enemy_move
	update_game_state(game_state, enemy_input)
	if game_state.current_status == :game_over
		break
	end
end

music_player.stop_music