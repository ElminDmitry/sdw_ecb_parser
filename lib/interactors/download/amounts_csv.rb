require 'open-uri'

module Downloader
  class AmountsCsv
    URL = 'https://sdw.ecb.europa.eu/quickview.do?SERIES_KEY=120.EXR.D.USD.EUR.SP00.A'

    private

    def self.file_object
      html = open(URL)
      doc = Nokogiri::HTML(html)
      open(doc.css('div.exportOptions a').map { |link| link['href'] }[1])
    end
  end
end
