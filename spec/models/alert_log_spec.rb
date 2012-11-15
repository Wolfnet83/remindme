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

require 'spec_helper'

describe AlertLog do
  pending "add some examples to (or delete) #{__FILE__}"
end
