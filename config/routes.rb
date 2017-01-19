Rails.application.routes.draw do
	get "/games", to: 'games#param_games'
	get "/guess", to: 'games#guess'
end
