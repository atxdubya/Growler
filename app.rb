require 'sinatra'
require 'sinatra/reloader'

before do
	
end

# Routes

git '/' do

	erb :index
end
