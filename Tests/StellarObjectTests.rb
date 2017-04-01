require 'minitest/autorun'
require './Requirements'

=begin
A stellar object is the parent class of any astral body that needs to track its position in relative space

this includes
- ships
- planets
- stars
- missiles travelling slower than mach 10

A stellar object should be able to know its distance to other stellar onjects and also be able to know its
relative coordinates in curvilinear terms. The player should not have access to the absolute view of the
starfield

Friendly text is given in Yaw, Roll and Pitch
Yaw - positivity indicates right
Pitch - positivity is up
Roll - 

1 Au = 150 Mkm, Mkm should be the standard unit of measurement
=end

class StellarObjectTests < Minitest::Test

	def test_constructor
		obj = StellarObject.new [1, 5, 10]
		assert obj.x == 1
		assert obj.y == 5
		assert obj.z == 10
		assert obj.name == "object"
	end

	def test_distance_to_object
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [2, 3, 4]
		testDistance = Math.sqrt(2 ** 2 + 3 ** 2 + 4 ** 2).round(2)

		res = origin.distance_to(obj)
		assert res == testDistance
	end

	def test_friendly_text
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [2, 3, 4]
		friendly = origin.display_distance(obj)

		assert "object is 5.39Mkm away" == friendly

	end

	def test_get_theta
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [1, 1, 5]
		theta_rad = Math.asin(1 / Math.sqrt(2))
		theta_deg = Angle.new (theta_rad * 180 / Math::PI)
		real_theta = origin.get_theta(obj)

		assert theta_deg.deg == real_theta.deg && theta_deg.min == real_theta.min && theta_deg.sec == real_theta.sec
	end

	def test_get_relative_coordinates

		origin = StellarObject.new [453, -1234, 25]
		obj = StellarObject.new [21, 134, -1]
		puts "==="
		puts "Rando coords", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [1, 1, 1]
		puts "==="
		puts "Octant 0", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [1, -1, 1]
		puts "==="
		puts "Octant 1", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [-1, -1, 1]
		puts "==="
		puts "Octant 2", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [-1, 1, 1]
		puts "==="
		puts "Octant 3", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [1, 1, -1]
		puts "==="
		puts "Octant 4", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [1, -1, -1]
		puts "==="
		puts "Octant 5", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [-1, -1, -1]
		puts "==="
		puts "Octant 6", origin.display_coords_rads(obj)
		puts "==="
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [-1, 1, -1]
		puts "==="
		puts "Octant 7", origin.display_coords_rads(obj)
		puts "==="
	end

	def test_math_works
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [3, 4, 5]		
		origin1 = StellarObject.new [1, 1, 1]
		obj1 = StellarObject.new [4, 5, 6]

		assert origin.display_coords_rads(obj) == origin1.display_coords_rads(obj1)
	end
end