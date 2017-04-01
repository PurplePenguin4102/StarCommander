require 'minitest/autorun'
require './Requirements'

class AngleTest < Minitest::Test
	def test_constructor
		dms_val = Angle.new 37.829324
		assert [37, 49, 45, 37.829324] == [dms_val.deg, dms_val.min, dms_val.sec, dms_val.frac]
	end

	def test_to_s
		dms_val = Angle.new 37.829324
		assert "37\u00B0 49\u2032 45\u2033" == dms_val.to_s
	end	
end