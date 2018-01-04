module Web::Controllers::Amounts
  class Index
    include Web::Action

    expose :amounts

    def call(params)
      @amounts = AmountRepository.new.latest(20).to_a
    end
  end
end
