class AlertsController < ApplicationController
  def index
    @alerts = current_user.alerts.all
  end

  def create
    @alert=current_user.alerts.new(params[:alert])
    @alert.next_exec = @alert.start_time + @alert.period
    if @alert.save
      redirect_to alerts_path
    elsif
      render 'new'
    end
  end

  def new
    @alert=Alert.new
  end
  
  def destroy
    @alert=Alert.find(params[:id])
    @alert.destroy
    redirect_to alerts_path
  end
  
  def edit
    @alert=Alert.find(params[:id])
  end

  def update
    @alert=Alert.find(params[:id])
    @alert.update_attributes(params[:alert])
    redirect_to alerts_path, notice: 'Updated'
  end

  def show
    @alert=Alert.find(params[:id])
  end

  def test_mail
    @alert=Alert.find(params[:id])
    AlertMailer.alert_mail(@alert).deliver
    redirect_to alerts_path
  end

end
