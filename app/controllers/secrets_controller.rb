class SecretsController < ApplicationController
  before_action :current_user

  def show
    redirect_to '/login' unless session.include? :name
  end
end
