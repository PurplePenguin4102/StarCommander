require 'minitest/autorun'
require './Requirements'

=begin
A spaceship is the basic unit of the game, and can have the most player customization

There are many predefined types of spaceship
- The player's capital ship
- Dreadnought
- Destroyer
- Ship of the Line
- Frigate
- Schooner
- Scout
- Transport
- Fighter
- Science Vessel

A spaceship holds this data
- thruster
- turning boosters "sails"
- Captain
- marines
- crew
- personnel
- weight
- weapons [LR missiles, shield disruptor missiles, LASER batteries, Rail guns, matter accelerator, WARP particle cannon]
- components [life support modules, drop pods, probes, smaller spaceships]

A spaceship's speed is a combination of it's weight and thrust capacity

A spaceship's ability to turn in yaw/roll/pitch directions is a function of its 
weight and tech level of its sails and initiative of crew

A spaceship's ability to bombard is a function of it's number of missile batteries

A spaceship's ability to negate shields is a function of it's FTL weaponry

A spaceship's ability to shield is a function of it's battery power

A spaceship's ability to engage in CQB is a function of its turning power and matter accelerators

A spaceship's ability to board is a function of its number of marines and boarding pods

Experience of captain influences all rolls spaceship makes

Each functional component of a spaceship (including weapons) requires a min-crew

A spaceship's resistance to damage is a combination of 
- the tech level of its missile jammers vs th tech level of the missiles
- the tech level of its missile ballast vs the tech level of the missiles
- the tech level of its deflection shield vs the tech level of the light weaponry
- the tech level of its armor vs the tech level of the matter accelerator/rail gun
- the tech level of its turrets vs the tech level of the drop pods
- the fighting spirit of its marines/crew vs the fighting spirit of the attacking marines

=end

class SpaceshipTest < Miniteest::Test

	def test_constructor

	end

end