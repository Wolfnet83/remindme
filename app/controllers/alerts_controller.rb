class AlertsController < ApplicationController
  def index
    @alerts = Alert.all
  end

  def create
    @alert=current_user.alerts.new(params[:alert])
    @alert.save
    redirect_to alerts_path
  end

  def new
    @alert=Alert.new
  end

  def show
    @alerts = Alert.all
  end
end
