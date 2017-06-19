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
