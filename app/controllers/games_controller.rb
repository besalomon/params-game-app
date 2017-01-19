class GamesController < ApplicationController
	def param_games
		@display = params[:name]
		@array = @display[0]
	
		if @array == "A"
			@answer = "Hey, your name starts with the first letter of the alphabet!"
		end
		render "param_game.html.erb"
	end
end
