class TextParser

	def read(raw_text)
		options = case raw_text.downcase
		when "inspect planets", "look at planets", "inspect all", "look planets"
			{
				:raw_input => raw_text, 
				:action => :INSPECT_ALL, 
				:verb => :INSPECT, 
				:noun => :ALL
			}
		when "scan all", "scan all planets", "scan planets"
			{
				:raw_input => raw_text, 
				:action => :SCAN_ALL, 
				:verb => :SCAN, 
				:noun => :ALL
			}
		when /^scan (.+)$/i
			{
				:raw_input => raw_text, 
				:action => :SCAN_PLANET, 
				:verb => :SCAN, 
				:noun => $1
			}
		when "end turn", "end"
			{
				:raw_input => raw_text,
				:action => :END_TURN,
				:verb => :END,
				:noun => :TURN
			}
		when "music", "m"
			{
				:raw_input => raw_text,
				:action => :MUSIC_TOGGLE,
				:verb => :TOGGLE,
				:noun => :MUSIC
			}
		when "music off", "m off"
			{
				:raw_input => raw_text,
				:action => :MUSIC_OFF,
				:verb => :OFF,
				:noun => :MUSIC
			}
		when "music on", "m on"
			{
				:raw_input => raw_text,
				:action => :MUSIC_ON,
				:verb => :ON,
				:noun => :MUSIC
			}
		else
			{
				:raw_input => raw_text, 
				:action => :DO_NOTHING, 
				:verb => :DO, 
				:noun => :NOTHING
			}
		end
		return PlayerAction.new(options)
	end
end