class GamesController < ApplicationController
	def param_games

		value = params[:name]
		if value.class == String
			@display = params[:name]
			@array = @display[0]
			if @array == "A"
				@answer = "Hey, your name starts with the first letter of the alphabet!"
			end
			
		else
			@array = ""
		end
	render "param_game.html.erb"
	end

	def guess
		correct_number = 39
		result = params[:number]
		if result.to_i > correct_number
			@message = "Guess lower"
		elsif result.to_i < correct_number
			@message = "Guess higher"
		else
			@message = "Congz, you won"
		end
		render "guess_game.html.erb"
	end
end
