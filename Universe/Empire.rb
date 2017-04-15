class Empire
	Rnd_Empire_Name = ["Kilardi","Meledan","Human","Qot","Gelm","New Therman","Selva","Kaggaroth"]
	Plurals = ["Kilardis", "Meledans", "Humans", "Qothians", "Gelmians", "New Therminians", "Selvans", "Kaggarothians"]
	attr_accessor :name
	attr_accessor :plural

	def initialize()
		@name = Rnd_Empire_Name.sample
		@plural = Plurals[Rnd_Empire_Name.index(@name)]
	end

end