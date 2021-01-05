class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] !=nil && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/show'
        else
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name 
    end 

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end


end