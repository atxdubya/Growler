require 'sinatra'
require 'sinatra/reloader'

before do
	# Initiating the growl_feed
	session[:growl_feed] ||= []	
end

enable :sessions

# Routes

<<<<<<< HEAD
ActionController::Routing::Routes.draw do |map|
  map.resources :posts
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

# get '/' do
# 	erb :index
# end

# get '/growl/:growl' do
# 	# We use this view to display the form
# 	session[:growl] = params[:growl]
# 	@growl = session[:growl]

# 	erb :growl
# end

# get '/feed' do

# 	session[:growl_feed] = params[:growl_feed]
# 	@growl_feed = session[:growl_feed]

# 	erb :feed
# end

# # # Add a new item

# post '/growl' do
# 	session[:growl_feed] << params[:growl_id]
	
# 	@growl_id = params[:growl_id]

# 	erb :add_growl_success
# end


=======
# Essentially homepage
get '/' do
	erb :feed
end

# Posting the growl input to the feed
post '/feed' do

	session[:growl_feed] << params[:growl]
	@growl_feed = session[:growl_feed]

	erb :feed
end
>>>>>>> 79857b7adce7f217adaf6313b312458655584158
