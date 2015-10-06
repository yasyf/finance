require 'money'
require 'money/bank/google_currency'

module Finance
  class Money
    def initialize(money, currency = nil)
      @money = money.is_a?(Money) ? money : ::Money.new(money, currency)
      exchange(currency) if currency
    end

    def exchange(currency)
      return if @money.currency == currency
      @money = @money.exchange_to(currency)
    rescue ::Money::Bank::UnknownRate
      self.class.setup
      @money = ::Money.new(@money.fractional, @money.currency).exchange_to(currency)
    end

    def self.setup
      ::Money.default_bank = ::Money::Bank::GoogleCurrency.new
    end
  end
end
