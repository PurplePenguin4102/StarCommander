class Player
	Rnd_player_names = ["Melchor", "Terria", "Generoth", "Jaharazhad", "Amos", "Dezzo", "Z", "Xarrat", "Xxyx", 
					"Yuttip", "Troa", "Kherrith", "Ia", "Llemmeroth", "Oot", "Porato", "Q'Zix", "Restevan"]

	attr_accessor :name, :ships, :planets, :has_advanced_scanner, :empire
	
	def initialize (plr_name = "")
		@ships = []
		@planets = []
		if plr_name == :prompt_name
			@name = prompt_name
			puts "You have been registered as \"#{@name}\" - star commander." 
		else
			@name = plr_name
			@name = Rnd_player_names.sample if name == "" 
		end
		@has_advanced_scanner = false
		@empire = Empire.new
 	end

 	def prompt_name
 		(TerminalTyper.new).puts_term "Please register your callsign, Star Commander (blank for random name)"
		print "::> "
		raw_text = gets.chomp
		return raw_text == "" ? Rnd_player_names.sample : raw_text;
 	end

 	def has_advanced_scanner?
 		@has_advanced_scanner
 	end

 	def to_s
 		"Callsign : #{@name} -- ships/planets : #{@ships.count}/#{@planets.count}"
 	end
end