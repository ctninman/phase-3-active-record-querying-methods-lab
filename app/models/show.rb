class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end


  # .most_popular_show: Returns the show with the highest rating.
  def self.most_popular_show
    Show.order(:rating).last
  end

  
  
  def self.lowest_rating
    Show.minimum(:rating)
  end
  

  # .least_popular_show: Returns the show with the lowest rating.
  def self.least_popular_show
    Show.order(:rating).first
  end
  

  def self.ratings_sum
    Show.sum(:rating)
  end
  

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end