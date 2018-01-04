module Web::Controllers::Amounts
  class Filter
    include Web::Action

    expose :amounts

    def call(params)
      @amounts = AmountRepository.new.exchange(params[:value], params[:date_range])
    end
  end
end
