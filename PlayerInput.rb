def get_player_input (game_state, music_player)
	text_parser = TextParser.new
	loop do
		print "Your move chum ::> "
		inp = text_parser.read(gets.chomp)
		
		case inp.action
		when :INSPECT_ALL
			puts game_state.star_field.get_planet_names
		when :SCAN_ALL
			Scanner.scan_all(game_state)
		when :MUSIC_ON
			music_player.play_music
		when :MUSIC_OFF
			music_player.stop_music
		when :MUSIC_TOGGLE
			music_player.toggle_music
		end
		
		case inp.verb
		when :SCAN_PLANET
			Scanner.scan_planet(game_state, inp.noun)  #gets first capture group from ruby global
		end

		if (inp.action == :END_TURN)
			return ""
		end
	end
end


# what do I need from my text parser...

# verbs
# nouns
# numbers
# help
# options
# F1??
# 