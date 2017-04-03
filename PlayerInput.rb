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
		end

		if inp.noun == :MUSIC
			handle_music_player(inp.verb, music_player)
		end
		
		case inp.verb
		when :SCAN_PLANET
			Scanner.scan_planet(game_state, inp.noun)
		end

		if (inp.action == :END_TURN)
			return ""
		end
	end
end

def handle_music_player(verb, music_player)
	case verb
	when :ON
		music_player.play_music
	when :OFF
		music_player.stop_music
	when :TOGGLE
		music_player.toggle_music
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