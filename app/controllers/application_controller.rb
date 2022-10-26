require './config/environment'
require 'sinatra/flash'
require 'dotenv' 
Dotenv.load 

class ApplicationController < Sinatra::Base

	register Sinatra::Flash     ## allows flash messages for errors and omissions with forms.


	configure do
		set :public_folder, 'public'      
		set :views, 'app/views'
		set :sessions, true
		set :session_secret, ENV['SESSION_SECRET']
		set :method_override, true
	end
	
	get "/" do
		@horses = Horse.all
		@users = User.all
		erb :index
	end

	helpers do

		def logged_in?
		  !!current_user
		end
	
		def current_user
		  @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
		end
	
	end

end
