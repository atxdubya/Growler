require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do |variable|
	session[:shopping_cart] ||= []
end

get '/' do
	erb :index
end

# Display the form for adding an item
get '/add_item' do
	# We use this view to display the form
	erb :add_item
end

get '/cart' do
	@shopping_cart = session[:shopping_cart]

	erb :cart
end

# Add a new item

post '/growl' do
	session[:news_feed] << params[:growl_id]

		@growl_id = params[:growl_id]

		erb :add_growl_success
end





