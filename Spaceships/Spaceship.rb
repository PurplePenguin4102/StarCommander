class Spaceship < StellarObject
	attr_accessor :vx, :vy, :vz
	attr_accessor :thrusters
	attr_accessor :sails
	attr_accessor :captain
	attr_accessor :marines
	attr_accessor :crew
	attr_accessor :personnel
	attr_accessor :shields
	attr_accessor :armor
	attr_accessor :weapons
	attr_accessor :components

	def increase_yaw(amount)

	end

	def increase_pitch(amount)

	end

	def increase_roll(amount)

	end

	def speed?
	end

	def weight?
	end

	def join_battle (battle)
		battle.ships << this
	end

end

