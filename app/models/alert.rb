class Alert < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :event, :event_description, :last_executed, :period, :user_id
end
