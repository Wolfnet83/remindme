class Alert < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :event, :event_description, :start_time, :last_executed, :period, :user_id
  validates_presence_of :event, :period
end
