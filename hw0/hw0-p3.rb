class BookInStock
  def initialize(isbn, price)
    @isbn = isbn.to_s
    @price = price.to_f

    validate!
  end

  attr_accessor :isbn, :price

  # $xx.xx format
  def price_as_string
    "$%.2f" % price
  end
 
  # private method
  def validate!
    raise ArgumentError.new("ISBN should not be empty") unless @isbn.length > 0
    raise ArgumentError.new("Price should not be negative") unless @price > 0
  end

  private :validate!
end

