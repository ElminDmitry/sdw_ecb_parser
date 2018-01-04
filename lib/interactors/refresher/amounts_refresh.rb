module Refresher
  class AmountsRefresh
    attr_reader :csv_file

    def initialize
      @csv_file = Downloader::AmountsCsv.file_object
    end

    def self.perform
      refresher = new
      refresher.refresh
    end

    def refresh
      repo = AmountRepository.new
      parsed_amounts = Roo::CSV.new(csv_file).parse(period: 'TIME_PERIOD', rate: 'OBS_VALUE')
      repo.clear
      repo.create parsed_amounts.select {|am| !am[:rate].nil? }
      repo.latest(20)
    end
  end
end
