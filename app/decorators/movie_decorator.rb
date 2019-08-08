class MovieDecorator < ApplicationDecorator
  delegate_all

  def name_with_certificate
    object.title + " " + "(#{object.age_rating})"
  end
  
  def duration
    "Duration: #{object.duration} mins"
  end
  
  def release_dates
    "Release Date: #{object.release_dates.strftime("%a %m/%d/%y")}"
  end
 
end