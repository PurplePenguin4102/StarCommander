module Scanner

	def Scanner.scan_planet (game_state, planet_name)
		puts "scanning..."
		sleep 2
		planet = game_state.star_field.planets.find { |p| p.name == planet_name }
		if planet
			puts "Planet found!"
			puts planet
		else
			puts "Scanner sux"
		end
	end

	def Scanner.scan_all(game_state)
		if game_state.player1.has_advanced_scanner? || Debug
			puts game_state.star_field.planets.join("\n")
		end
	end
end
