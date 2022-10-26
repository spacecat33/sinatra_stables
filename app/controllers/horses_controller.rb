require 'pry'
class HorsesController < ApplicationController
    get '/horses' do
       if logged_in?
         @user = current_user
         @horses = Horse.all
         erb :'horses/horses'
       else
         redirect to '/login'
       end
    end

    get '/horses/new' do
        if logged_in?
          erb :'horses/create_horse'
        else
          redirect to '/login'
        end
    end

    post '/horses' do
      if logged_in?
        @user = current_user
        if params[:name] == ""
          redirect to "/horses/new"
        else
            @horse = Horse.create(params[:horse])
            @horse.user = @user
            @horse.save
                if 
                  redirect to "/horses/#{@horse.id}"
                else
                  redirect to "/horses/new"
                end
        end
      else
        redirect to '/login'
      end
    end
      
    get '/horses/:id' do
        if logged_in?
            @user = current_user
            @horse = Horse.find_by_id(params[:id])
            erb :'horses/show_horse'
          else
            redirect to '/login'
          end
        end
      
      get '/horses/:id/edit' do
        if logged_in?
          @horse = Horse.find_by_id(params[:id])
          if @horse && @horse.user == current_user
           erb :'horses/edit_horse'
          else
           redirect to '/horses'
          end
        else
         redirect to '/login'
        end
      end
      
      patch '/horses/:id' do
        # binding.pry
        if logged_in?
            if params[:name] == ""
            redirect to "/horses/#{params[:id]}/edit"
            else
                @horse = Horse.find(params[:id])
                if @horse.user == current_user
                   if @horse.update(name: params[:name])
                    redirect to "/horses/#{@horse.id}"
                    else
                    redirect to "/horses/#{params[:id]}/edit"
                    end
                else
                redirect to '/horses'
                end
            end
        else
            redirect to 'login'
        end
     end
      
      delete '/horses/:id' do
        if logged_in?
          @user = current_user
          @horse = Horse.find_by_id(params[:id])
          if @horse && @horse.user == current_user
            @horse.delete
          end
          redirect to '/horses'
        else
          redirect to '/login'
        end
      end
end