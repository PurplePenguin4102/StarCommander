require 'minitest/autorun'
require './Requirements'

=begin
The battle class encapsulates battlefield information

- Gravity wells
- Asteroids / space junk
- Nearby planets
- Warp gates/wormholes
- physics anomalies
- participating ships

When a battle is defined with participating ships, the ships are given x/y/z coordinates in relation to
each other
=end

class BattleTest < Minitest::Test

	def test_constructor
		ships = []
		ships << Spaceship.new
		ships << Spaceship.new
		battle = Battle.new ships

		assert ships[0].y != ships[1].y 
	end
end