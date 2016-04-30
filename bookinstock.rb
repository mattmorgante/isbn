class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end 

  def to_s 
    "ISBN: #{@isbn}, price: #{@price}"
  end 

  def price_in_cents
    Integer(price*100 + 0.5)
  end
end

book = BookInStock.new("isbn1", 33.84)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"