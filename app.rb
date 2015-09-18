require 'sinatra'
require 'sinatra/reloader'

before do
	# Initiating the growl_feed
	session[:growl_feed] ||= []	
end

enable :sessions

# Routes

# Essentially homepage
get '/' do
	@growl_feed = session[:growl_feed]
	erb :feed
end

# Posting the growl input to the feed
post '/feed' do
	# if :growl.length <= 142
	session[:growl_feed] << params[:growl]
	@growl_feed = session[:growl_feed]

	erb :feed
end
