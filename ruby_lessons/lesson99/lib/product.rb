class Product
    attr_accessor :price, :amount, :date_production

    def initialize(params)
      @date_production = params[:date_production]
      @price = params[:price]
      @amount = params[:amount]
    end
end