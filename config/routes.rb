Rails.application.routes.draw do
	get "/games", to: 'games#param_games'
end
