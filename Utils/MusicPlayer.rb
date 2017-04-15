class MusicPlayer
	attr_accessor :player
	attr_accessor :player_pid
	attr_accessor :play_thr

	def initialize
		aplay = `aplay --version`
		if /^aplay: version(.+)/ =~ aplay
			@player = true
		end
	end

	def is_valid?
		@player
	end

	def play_music
		unless @play_thr
			@play_thr = Thread.new do
				loop do
					@player_pid = spawn "aplay Assets/music_loop.wav -q"
					Process.wait @player_pid
				end
			end
		end
	end

	def stop_music
		if (@player_pid || @play_thr)
			Process.kill("HUP", @player_pid)
			@play_thr.kill
			@play_thr = nil
		end
	end

	def toggle_music
		if @play_thr 
			stop_music
		else
			play_music
		end
	end
end