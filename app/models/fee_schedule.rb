# encoding: UTF-8
# frozen_string_literal: true

# TODO: Think about renaming model the most explicit name is TradingFeeSchedule.
# TODO: Seed FeeSchedules in the same way as we do with currencies, markets etc.
class FeeSchedule < ApplicationRecord
  # == Constants ============================================================

  # Or we use Market::FEE_PRECISION ???
  FEE_PRECISION = 4

  MIN_FEE = 0
  MAX_FEE = 0.5

  # == Attributes ===========================================================

  # == Extensions ===========================================================

  # == Relationships ========================================================

  belongs_to :market, optional: true

  # == Validations ==========================================================

  validates :group, uniqueness: { scope: :market_id }

  validates :maker,
            :taker,
            presence: true,
            numericality: { greater_than_or_equal_to: MIN_FEE,
                            less_than_or_equal_to: MAX_FEE }

  validates :market_id,
            inclusion: { in: ->(_fs){ Market.ids }},
            if: ->(fs){ fs.market_id.present? }

  # TODO: Add precision validations for maker & taker.
  # NOTE: May be it's time to write Precision validation class ?

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  class << self
    def for(order)
      FeeSchedule
        .where(market_id: [order.market_id, nil], group: [order.member.group, nil])
        .max_by { |fs| fs.weight } || FeeSchedule.new
    end
  end

  # == Instance Methods =====================================================

  def weight
    (group.present? ? 10 : 0) + (market_id.present? ? 1 : 0)
  end
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
