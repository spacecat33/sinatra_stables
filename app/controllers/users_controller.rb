class UsersController < ApplicationController

    get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :'users/show'
    end

    get "/signup" do
        if !logged_in?
            erb :"users/signup", locals: {message: "Please sign up or login if your have an account"}
        else
            redirect to '/login'
        end
    end

    post "/signup" do
        user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])

        if user.save
            redirect "/login"
        else
            redirect "/failure"
        end
    end

    get "/login" do
        erb :"users/login"
    end

    post "/login" do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/success"
        else
            redirect "/failure"
        end
    end

    get "/success" do
        if logged_in?
            erb :success
        else
            redirect "/login"
        end
    end

    get "/failure" do
        erb :"users/failure"
    end

    get "/logout" do
        session.clear
        redirect "/"
    end

end