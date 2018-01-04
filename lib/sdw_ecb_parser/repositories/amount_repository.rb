class AmountRepository < Hanami::Repository
  
  def latest(value)
    amounts.order { period.desc }.limit(value)
  end

  def exchange(value, dates)
    amounts.where { (period > dates.min) & (period < dates.max) }.to_a.map { |amount| value.to_i * amount.rate.round(2) }
  end
end
