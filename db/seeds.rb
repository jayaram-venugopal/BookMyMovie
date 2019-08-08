# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = `curl "https://api-gate2.movieglu.com/filmsNowShowing/?n=20" -H "api-version: #{ENV['MOVIE_GLU_API_VERSION']}" -H "Authorization: #{ENV['MOVIE_GLU_AUTHORIZATION']}" -H "x-api-key: #{ENV['MOVIE_GLU_API_KEY']}" -H "device-datetime: 2019-08-09T10:35:00.530Z" -H "territory: #{ENV['MOVIE_GLU_TERRITORY']}" -H "client: #{ENV['MOVIE_GLU_USERNAME']}"`
result = JSON.parse(response)
duration_mins = [136, 158, 155, 153, 149, 130, 118, 125, 146, 122, 140, 142, 169, 132, 175, 124, 109, 137, 143, 182]
total_seates = [50, 75, 100]

result["films"].each do |film|
  film_id = film["film_id"]
  film_details = `curl "https://api-gate2.movieglu.com/filmShowTimes/?film_id=#{film_id}&date=2019-08-09" -H "api-version: #{ENV['MOVIE_GLU_API_VERSION']}" -H "Authorization: #{ENV['MOVIE_GLU_AUTHORIZATION']}" -H "x-api-key: #{ENV['MOVIE_GLU_API_KEY']}" -H "device-datetime: 2019-08-09T10:35:00.530Z" -H "territory: #{ENV['MOVIE_GLU_TERRITORY']}" -H "client: #{ENV['MOVIE_GLU_USERNAME']}" -H "geolocation: 12.9716;77.5946"`
  unless film_details.empty?
    response = JSON.parse(film_details)
    detail_response = response['film']
    params = {title: detail_response["film_name"], release_dates: film["release_dates"][0]["release_date"], age_rating: detail_response["age_rating"][0]["rating"], duration: duration_mins[Random.rand(duration_mins.length)], poster_url: detail_response["images"]["poster"]["1"]["medium"]["film_image"]}
    movie = Movie.create!(params)
    cinema_response = response["cinemas"]
    cinema_names = cinema_response.map {|a| a["cinema_name"]}
    cinema_names.each do |name|
      theater = Theater.new
      theater.name = name
      theater.total_seates = total_seates[Random.rand(total_seates.length)]
      if theater.save
        show = theater.shows.new
        show.movie_id = movie.id
        show.morning = random_boolean = [true, false].sample
        show.matinee = random_boolean = [true, false].sample
        show.evening = random_boolean = [true, false].sample
        show.night = random_boolean = [true, false].sample
        show.save!
      end
    end
  end
end

