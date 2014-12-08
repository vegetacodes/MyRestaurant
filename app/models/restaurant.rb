class Restaurant < ActiveRecord::Base
  has_many :menus
  has_one :location

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    # Restaurant.where("location.zip like ?", "%#{query}%") 
    binding.pry
  end

end
