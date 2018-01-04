RSpec.describe Web::Controllers::Amounts::Filter, type: :action do
  let(:action) { described_class.new }
  let(:params) { {value: 100, date_range: [Date.today.prev_day, Date.today]} }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
