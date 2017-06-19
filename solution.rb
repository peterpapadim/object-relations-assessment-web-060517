# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @reviews = []
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find do |each_name|
      each_name.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |each_name|
      each_name.first_name == name
    end
  end

  def self.all_names
    self.all.map do |each_name|
      each_name.full_name
    end
  end

  # pass restaurant object and new content as string
  def add_review(restaurant, content)
    new_review = Review.new(content, restaurant)
    new_review.customer = self
    self.reviews << new_review
  end

end




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





class Restaurant
  attr_accessor :name, :review
  @@all = []

  def initialize(name)
    @name = name
    @review = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |each_name|
      each_name.name == name
    end
  end

  def reviews
    self.review.map do |each_review|
      each_review
    end
  end

end
