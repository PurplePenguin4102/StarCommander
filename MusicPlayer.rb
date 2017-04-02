class MusicPlayer
	attr_accessor :player
	attr_accessor :player_pid
	attr_accessor :play_thr

	def initialize
		aplay = `aplay --version`
		if /^aplay: version(.+)/ =~ aplay
			:player = true
		end
	end

	def is_valid?
		@player == nil
	end

	def play_music
		@play_thr = Thread.new do
			loop do
				@player_pid = spawn "aplay Assets/music_loop.wav -q"
				Process.wait @player_pid
			end
		end
	end

	def stop_music
		Process.kill("HUP", @player_pid)
		@play_thr.kill
	end

end