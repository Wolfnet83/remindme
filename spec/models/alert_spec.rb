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

require 'spec_helper'

describe Alert do
  pending "add some examples to (or delete) #{__FILE__}"
end
