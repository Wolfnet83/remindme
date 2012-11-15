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
#  active            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  next_exec         :date
#

class Alert < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :event, :event_description, :start_time, :last_executed, :period, :user_id
  validates :event, :period, :start_time, :presence => true
  validates :period, :numericality => true

  def self.check_alert_dates
      @alerts = Alert.where("next_exec = ? and active = 't'", Time.now.strftime("%Y-%m-%d"))
  end

end
