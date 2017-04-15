class TerminalTyper

	def puts_term (input)
		input << 0x0a
		input.each_char {|char| print char; sleep 0.01}
	end

end