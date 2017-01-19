class GamesController < ApplicationController
	def param_games

			@display = params[:name]
			if @display.class == String
			@array = @display[0]
			@display = @display.upcase
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
		@message = "Please guess a number"
		result = params[:number]
		if result.class == String
			if result.to_i > correct_number
				@message = "Guess lower"
			elsif result.to_i < correct_number
				@message = "Guess higher"
			else
				@message = "Congz, you won"
			end
		end
		render "guess_game.html.erb"
	end
end
