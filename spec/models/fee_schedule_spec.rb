# encoding: UTF-8
# frozen_string_literal: true

describe FeeSchedule, 'Relationships' do
  context 'belongs to market' do
    context 'null market_id' do
      subject { build(:fee_schedule) }
      it { expect(subject.valid?).to be_truthy }
    end

    context 'existing market_id' do
      subject { build(:fee_schedule, market_id: :btcusd) }
      it { expect(subject.valid?).to be_truthy }
    end

    context 'non-existing market_id' do
      subject { build(:fee_schedule, market_id: :usdbtc) }
      it { expect(subject.valid?).to be_falsey }
    end
  end
end

describe FeeSchedule, 'Validations' do
  context 'group uniqueness' do
    context 'different markets' do
      before { create(:fee_schedule, market_id: :btcusd, group: 'vip-1') }

      context 'same group' do
        subject { build(:fee_schedule, market_id: :btceth, group: 'vip-1') }
        it { expect(subject.valid?).to be_truthy }
      end

      context 'different group' do
        subject { build(:fee_schedule, market_id: :btceth, group: 'vip-2') }
        it { expect(subject.valid?).to be_truthy }
      end

      context 'nil group' do
        before { create(:fee_schedule, market_id: :btcusd, group: nil) }
        subject { build(:fee_schedule, market_id: :btceth, group: nil) }
        it { expect(subject.valid?).to be_truthy }
      end
    end

    context 'same market' do
      before { create(:fee_schedule, market_id: :btcusd, group: 'vip-1') }

      context 'same group' do
        subject { build(:fee_schedule, market_id: :btcusd, group: 'vip-1') }
        it { expect(subject.valid?).to be_falsey }
      end

      context 'different group' do
        subject { build(:fee_schedule, market_id: :btcusd, group: 'vip-2') }
        it { expect(subject.valid?).to be_truthy }
      end

      context 'nil group' do
        before { create(:fee_schedule, market_id: :btcusd, group: nil) }
        subject { build(:fee_schedule, market_id: :btcusd, group: nil) }
        it { expect(subject.valid?).to be_falsey }
      end
    end

    context 'nil market' do
      before { create(:fee_schedule, group: 'vip-1') }

      context 'same group' do
        subject { build(:fee_schedule, group: 'vip-1') }
        it { expect(subject.valid?).to be_falsey }
      end

      context 'different group' do
        subject { build(:fee_schedule, group: 'vip-2') }
        it { expect(subject.valid?).to be_truthy }
      end

      context 'nil group' do
        before { create(:fee_schedule, group: nil) }
        subject { build(:fee_schedule, group: nil) }
        it { expect(subject.valid?).to be_falsey }
      end
    end
  end

  context 'maker, taker numericality' do
    # TODO: Write me.
  end

  context 'market_id inclusion in' do
    # TODO: Write me.
  end
end

describe FeeSchedule, 'Class Methods' do
  context '#for' do
    let!(:member) { create(:member) }

    before do
      member.instance_eval do
        def group
          :vip1
        end
      end

      create(:fee_schedule, market_id: :btcusd, group: :vip1)
      create(:fee_schedule, group: :vip1)
      create(:fee_schedule, market_id: :btcusd)
      create(:fee_schedule, market_id: nil, group: nil)
    end

    let(:order) { Order.new(member: member, market_id: :btcusd) }
    it 'iii' do
      binding.pry
      FeeSchedule.for(order).pry
      expect(FeeSchedule.for(order)).to be_truthy
    end
  end
end
