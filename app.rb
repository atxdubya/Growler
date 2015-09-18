require 'sinatra'
require 'sinatra/reloader'

before do
	
end

enable :sessions

# Routes

get '/' do
	erb :index
end

get '/growl/:growl' do
	# We use this view to display the form
	session[:growl] = params[:growl]
	@growl = session[:growl]

	erb :growl
end

get '/feed' do

	session[:growl_feed] = params[:growl_feed]
	@growl_feed = session[:growl_feed]

	erb :feed
end

# # Add a new item

post '/growl' do
	session[:growl_feed] << params[:growl_id]
	
	@growl_id = params[:growl_id]

	erb :add_growl_success
end
