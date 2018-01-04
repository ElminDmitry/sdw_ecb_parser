require 'features_helper'

describe 'Visit amounts' do
  it 'is successful' do
    visit '/'

    expect(page.body).to include('All amounts')
  end
end