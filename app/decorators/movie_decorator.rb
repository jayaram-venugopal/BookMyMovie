class MovieDecorator < ApplicationDecorator
  delegate_all

  def name_with_certificate
    object.title + " " + "(#{object.age_rating})"
  end
  
  def duration
    "#{object.duration} mins"
  end
  
  def release_dates
    "#{object.release_dates.strftime("%m/%d/%y")}"
  end
end
