class StellarObject
	attr_accessor :x, :y, :z, :name

	def initialize(coords = nil, name = nil)
		if (coords)
			set_coords(coords)
		else
			set_coords([0, 0, 0])
		end
		@name = name || "object"
	end

	def set_coords(coords)
			@x = coords[0]
			@y = coords[1]
			@z = coords[2]
	end

	def distance_to(stellar_object)
		dx = @x - stellar_object.x
		dy = @y - stellar_object.y
		dz = @z - stellar_object.z
		Math.sqrt(dx ** 2 + dy ** 2 + dz ** 2).round(2)
	end

	def display_distance(stellar_object)
		"#{stellar_object.name} is #{self.distance_to(stellar_object)}Mkm away"
	end

	#phi displays the angle of lift from xy plane from the origin with z=0 
	def get_phi(stellar_object)
		dy = stellar_object.y - @y
		dz = stellar_object.z - @z
		yz_hyp = Math.sqrt(dy ** 2 + dz ** 2)
		rad =  Math.asin(dz / yz_hyp)
		angle = Angle.new rad * 180 / Math::PI
		return angle
	end

	#theta displays the angle of difference in the xy plane from the y+ x=0 axis
	def get_theta(stellar_object)
		dx = stellar_object.x - @x
		dy = stellar_object.y - @y
		xy_hyp = Math.sqrt(dx ** 2 + dy ** 2)
		rad = Math.asin(dx / xy_hyp)
		angle = Angle.new rad * 180 / Math::PI
		angle.deg = 180 - angle.deg if dy < 0
		angle.deg = angle.deg - 360 if angle.deg > 180
		return angle
	end

	def display_coords_rads(stellar_object)
		theta = self.get_theta(stellar_object)
		phi = self.get_phi(stellar_object)
		%Q(Relative to universal coordinated center pointing y+ #{stellar_object.name} is 
#{self.distance_to(stellar_object)}Mkm away at 
\u03B8 #{theta} #{theta.yaw_description}-side
\u03D5 #{phi} #{phi.pitch_description}-side).encode('utf-8')
	end
end
