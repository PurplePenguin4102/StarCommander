module Validator
	def Validator.star_field_valid? (star_field)
		return false if star_field.planets.nil?
		star_field.planets.select {|planet| planet.type != "High Grav"}.size > 2
	end
end