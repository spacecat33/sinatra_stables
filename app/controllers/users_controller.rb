
class UsersController < ApplicationController

    get "/signup" do
        if !logged_in?
            erb :"users/signup", locals: {message: "Please sign up or login if your have an account"}
        else
            redirect to '/horses'
        end
    end

    post "/signup" do
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            redirect to '/signup'
        else
            @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
            @user.save
            session[:user_id] = @user.id
            redirect to '/horses'
        end
    end

    get "/login" do
        if !logged_in?
            erb :'users/login'
        else
            @user = current_user
            redirect to '/horses'
        end
    end

    post "/login" do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/horses"
        else
            redirect "/failure"
        end
    end

    get "/failure" do
        erb :"users/failure"
    end

    get "/logout" do
        if logged_in?
            session.destroy
            redirect to '/login'
        else
            redirect to '/'
        end
    end
end