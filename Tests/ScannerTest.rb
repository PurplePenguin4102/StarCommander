require 'minitest/autorun'
require './Requirements'

class ScannerTest < Minitest::ScannerTest

	def test_scan_planet
		sf = StarField.new
		sf.planets << "Earth"
		(Scanner.new).scan_planet("Earth", sf)
	end
end