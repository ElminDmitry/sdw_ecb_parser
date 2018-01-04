require 'spec_helper'
require 'open-uri'

describe Downloader::AmountsCsv do
  let(:repo) { AmountRepository.new }

  it "downloads fresh exchange rates" do
    repo.clear
    Refresher::AmountsRefresh.perform
    expect(repo.all).not_to be_empty
  end
end