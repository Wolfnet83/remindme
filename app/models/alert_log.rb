# == Schema Information
#
# Table name: alert_logs
#
#  id          :integer          not null, primary key
#  alert_id    :integer
#  executed_on :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AlertLog < ActiveRecord::Base
  belongs_to :alert
  attr_accessible :alert_id, :executed_on
end
