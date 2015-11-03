require 'bundler/setup'
Bundler.require(:default)

require File.dirname(__FILE__) + "/app.rb"


map "/" do
    run Growler
end
