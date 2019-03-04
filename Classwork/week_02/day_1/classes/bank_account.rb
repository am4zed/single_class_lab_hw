class BankAccount                         #class definition
    attr_accessor :name, :type
    attr_reader :amount

    def initialize(name, amount, type)    #initialize = .new method
      @name = name                        #instance variables
      @amount = amount
      @type = type
    end

    def change_amount(deposit)
      @amount += deposit
    end

    def pay_monthly_fee
      @type == "business" ? @amount -= 50 : @amount -= 10 
    end

end
