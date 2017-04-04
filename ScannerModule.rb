class Scanner

	def scan_planet (planet_name, star_field)
		puts "scanning..."
		sleep 2
		planet = star_field.planets.find { |p| p.name == planet_name }
		if planet
			puts "Planet found!"
			puts planet
		else
			puts "Scanner sux"
		end
	end

	def scan_all(game_state)
		if game_state.player1.has_advanced_scanner? || Debug
			puts game_state.star_field.planets.join("\n")
		end
	end
end
