class LoreWizard

	attr_accessor :year, :time

	def get_intro(game)
		@year = rand(3000..4999)
		@time = rand(20..59)
		%Q(
Welcome star commander "#{game.player1.name}". The year is #{@year}. It has been #{@time} years since the last great planetary conflict.

As you know, the #{game.player1.empire.name} empire was victorious over the evil #{game.player2.empire.name}. As a decorated military hero, you have
been tasked to secure the frontier sectors. You move your family to the #{game.star_field.field_name} star field, and prepare
yourself mentally for the difficult task ahead.

Already, it seems that a challenge awaits you. The planets in the star system, beleaguered by the constant war, have declared
themselves as independent governments, separate from the galactic alliance. It will be up to you as star commander to bring
this wayward system to heel.

You have only your capital ship and your loyal crew at your command, with a rebellious star system before you, and the constant
threat of a #{game.player2.empire.name} commander taking the precious resources that rightfully belong to the #{game.player1.empire.name} empire.)
	end
end