class Review

  attr_accessor :content, :restaurant, :customer
  @@all = []

  def initialize(content, restaurant)
    @content = content
    @restaurant = restaurant
    @@all << content
    restaurant.review << content
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
