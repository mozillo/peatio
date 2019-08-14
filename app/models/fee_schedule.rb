# encoding: UTF-8
# frozen_string_literal: true

class FeeSchedule < ApplicationRecord
end

# == Schema Information
# Schema version: 20190814102636
#
# Table name: fee_schedules
#
#  id         :bigint           not null, primary key
#  market_id  :string(20)
#  group      :string(32)
#  maker      :decimal(5, 4)    default(0.0), not null
#  taker      :decimal(5, 4)    default(0.0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_fee_schedules_on_group                (group)
#  index_fee_schedules_on_market_id            (market_id)
#  index_fee_schedules_on_market_id_and_group  (market_id,group) UNIQUE
#
