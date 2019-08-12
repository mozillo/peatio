# encoding: UTF-8
# frozen_string_literal: true

class OrderAsk < Order
  scope :matching_rule, -> { order(price: :asc, created_at: :asc) }

  # @deprecated
  def hold_account
    member.get_account(ask)
  end

  # @deprecated
  def hold_account!
    Account.lock.find_by!(member_id: member_id, currency_id: ask)
  end

  def expect_account
    member.get_account(bid)
  end

  def expect_account!
    Account.lock.find_by!(member_id: member_id, currency_id: bid)
  end

  def avg_price
    return ::Trade::ZERO if funds_used.zero?
    market.round_price(funds_received / funds_used)
  end

  def currency
    Currency.find(ask)
  end

  def compute_locked
    case ord_type
    when 'limit'
      volume
    when 'market'
      estimate_required_funds(Global[market_id].bids) {|_p, v| v}
    end
  end

end

# == Schema Information
# Schema version: 20190730140453
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  bid            :string(10)       not null
#  ask            :string(10)       not null
#  market_id      :string(20)       not null
#  price          :decimal(32, 16)
#  volume         :decimal(32, 16)  not null
#  origin_volume  :decimal(32, 16)  not null
#  maker_fee      :decimal(17, 16)  default(0.0), not null
#  taker_fee      :decimal(17, 16)  default(0.0), not null
#  state          :integer          not null
#  type           :string(8)        not null
#  member_id      :integer          not null
#  ord_type       :string(30)       not null
#  locked         :decimal(32, 16)  default(0.0), not null
#  origin_locked  :decimal(32, 16)  default(0.0), not null
#  funds_received :decimal(32, 16)  default(0.0)
#  trades_count   :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_orders_on_member_id                     (member_id)
#  index_orders_on_state                         (state)
#  index_orders_on_type_and_market_id            (type,market_id)
#  index_orders_on_type_and_member_id            (type,member_id)
#  index_orders_on_type_and_state_and_market_id  (type,state,market_id)
#  index_orders_on_type_and_state_and_member_id  (type,state,member_id)
#  index_orders_on_updated_at                    (updated_at)
#
