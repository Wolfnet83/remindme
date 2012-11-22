# == Schema Information
#
# Table name: alerts
#
#  id                :integer          not null, primary key
#  event             :string(255)
#  event_description :text
#  user_id           :integer
#  period            :integer
#  start_time        :date
#  last_executed     :date
#  active            :boolean          default(TRUE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  next_exec         :date
#

class Alert < ActiveRecord::Base
  belongs_to :user
  has_many :alert_logs
  attr_accessible :active, :event, :event_description, :start_time, :last_executed, :period, :user_id
  validates :event, :period, :start_time, :presence => true
  validates :period, :numericality => true

  before_update :next_date_update

  def self.check_alert_dates
      @alerts = Alert.where("next_exec = ? and active = 't'", Time.now.strftime("%Y-%m-%d"))
      @alerts.each do |alert|
        AlertMailer.alert_mail(alert.user.email).deliver
        alert_log = alert.alert_logs.new
        alert_log.executed_on = Time.now
        alert_log.save
      end
  end

  def next_date_update
    if self.start_time_changed?  
      self.next_exec = self.start_time + self.period
    elsif  self.period_changed?
      if self.alert_logs.count >= 1 
          self.next_exec = self.alert_logs.last.executed_on + period 
        elsif
          sefl.next_exec = self.start_time + self.period
        end
    end
  end
end
