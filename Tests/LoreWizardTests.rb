require 'minitest/autorun'
require './Requirements'

class LoreWizardTests < Minitest::Test

	def test_some_shit
		gs = GameState.new
		lw = LoreWizard.new 
		intro = lw.get_intro gs
		assert lw.year > 2000
		assert lw.time > 20
	end
end