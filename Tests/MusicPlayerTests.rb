require 'minitest/autorun'
require './Requirements'

class MusicPlayerTests < Minitest::Test
	def test_constructor
		player = MusicPlayer.new
		assert player.player
		assert player.is_valid?
	end

	def test_playback
		player = MusicPlayer.new
		player.play_music
		puts "==="
		puts "You should be hearing music"
		puts player.play_thr
		3.times {puts "."; sleep 1}
		puts "==="
		player.stop_music
	end


end