class SessionsController < ApplicationController
    def index
        if current_user
            @user = @current_user
            render 'index'
        else
            redirect_to '/login'
        end
    end
   
    def new 

    end

    def create
        if params[:name] && params[:name] != ''
            session[:name] = params[:name]
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete(:name) if session[:name]
    end


end