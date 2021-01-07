class SecretsController < ApplicationController

    before_action :require_login
 
  def new
    @secret = Secret.new
  end

  def show
    @secret = Secret.find(params[:id])
  end

  def create
    @secret = Secret.create(session_id: user_id)
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
