class SessionsController < ApplicationController

    def new 
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/'
        else
            session[:name] = params[:name]
        end
    end

    def destroy 
        session.destroy
    end

end
