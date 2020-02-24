require_relative 'config/environment'

class App < Sinatra::Base
	get '/' do
		erb :user_input
	end

	post '/piglatinize' do
		ex = PigLatinizer.new
		@piglatin = ex.piglatinize(params["user_phrase"])
		erb :results
	end 	
end