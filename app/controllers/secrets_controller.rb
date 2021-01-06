class SecretsController < ApplicationController
    before_action :require_logged_in

    def show
        # if !current_user
        #     redirect_to '/'
        # else
        #     render :show
        # end
    end
end
