class Alert < ActiveRecord::Base
  attr_accessible :active, :event, :event_description, :last_executed, :period, :user_id
end
