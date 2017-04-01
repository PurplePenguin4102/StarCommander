class Angle

	attr_accessor :deg, :min, :sec, :frac

	def initialize (num)
		@frac = num
		@deg, fraction = num.divmod 1
		fraction *= 60
		@min, fraction = fraction.divmod 1
		fraction *= 60
		@sec, _ = fraction.divmod 1
	end

	def to_s
		"#{@deg}\u00B0 #{@min}\u2032 #{@sec}\u2033"
	end
end