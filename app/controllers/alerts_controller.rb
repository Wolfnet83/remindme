class AlertsController < ApplicationController
  def index
    @alerts = current_user.alerts.all
  end

  def create
    @alert=current_user.alerts.new(params[:alert])
    @alert.save
    redirect_to alerts_path
  end

  def new
    @alert=Alert.new
  end

end
