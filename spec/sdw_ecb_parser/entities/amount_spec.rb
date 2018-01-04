RSpec.describe Amount, type: :entity do
  describe Amount do
    it 'can be initialised with attributes' do
      amount = Amount.new(period: '2017-12-29')
      expect(amount.period.to_s).to eq '2017-12-29'
    end
  end
end
