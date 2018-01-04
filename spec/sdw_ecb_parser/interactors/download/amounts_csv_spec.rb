require 'spec_helper'
require 'open-uri'

describe Downloader::AmountsCsv do
  let(:file) { Downloader::AmountsCsv.file_object }

  it "succeeds" do
    expect(File.exists?(file)).to be true
  end
end