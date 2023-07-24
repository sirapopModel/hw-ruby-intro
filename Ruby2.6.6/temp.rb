class BookInStock

    def initialize(isbn, price)
      @isbn = isbn.is_a?(String)&& !(isbn.empty?) ? isbn : raise(ArgumentError)
      @price = price.is_a?(Float)||price.is_a?(Integer) && price >0 ?  price : raise(ArgumentError)
    end
  
    attr_accessor :isbn
    attr_accessor :price
  
    def price_as_string
      return "$"+ @price.to_f.to_s
    end
  end

temp = BookInStock.new('isbn1',10)
puts temp.price_as_string

a = 10
puts sprintf('%.2f', a)

