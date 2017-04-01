module TestData_PlayerActions

	def inspect_all
		PlayerAction.new(
			{
				:raw_input => "",
				:action => :INSPECT_ALL,
				:verb => :INSPECT,
				:noun => :ALL
			})
	end

	def scan_all 
		PlayerAction.new(
		{
			:raw_input => "", 
			:action => :SCAN_ALL, 
			:verb => :SCAN, 
			:noun => :ALL
		})
	end

	def scan_planet  
		PlayerAction.new(
		{
			:raw_input => "", 
			:action => :SCAN_PLANET, 
			:verb => :SCAN, 
			:noun => "new haven"
		})
	end

	def scan_luthor
		PlayerAction.new(
		{
			:raw_input => "", 
			:action => :SCAN_PLANET, 
			:verb => :SCAN, 
			:noun => "luthor"
		})
	end

	def end_turn 
		PlayerAction.new(
		{
			:raw_input => "",
			:action => :END_TURN,
			:verb => :END,
			:noun => :TURN
		})
	end

	def do_nothing 
		PlayerAction.new(
		{
			:raw_input => "", 
			:action => :DO_NOTHING, 
			:verb => :DO, 
			:noun => :NOTHING
		})
	end
end