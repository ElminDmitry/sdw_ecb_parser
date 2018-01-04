module Web::Controllers::Amounts
  class Refresh
    include Web::Action

    expose :amounts

    def call(params)
      @amounts = Refresher::AmountsRefresh.perform
    end
  end
end
