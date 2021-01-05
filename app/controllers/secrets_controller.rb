class SecretsController < ApplicationController
    before_action :current_user

    def show
        if current_user.nil?
            redirect_to '/'
        else
            render :show
        end
    end 

    # private 

    # def require_login
    #     redirect_to '/' unless current_user
    # end 

end 