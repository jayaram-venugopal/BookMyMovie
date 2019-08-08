require 'uri'
require 'net/http'
class FilmService
  
  def initialize()
    @headers = headers
    @options = { query: { n: 10} }
  end
      
  def films_now_showing
    url = URI("https://api-gate2.movieglu.com/filmsNowShowing?n=20")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = 'Basic Qk9PS18yOlZ3ZkpTYnJySzJHWQ=='
    request["x-api-key"] = 'b1E83hgMc1NS0txmHyzd4p96kWLwGSk1uu5Jps70'
    request["territory"] = 'IN'
    request["client"] = 'BOOK_2'
    request["device-datetime"] = '2019-08-08T10:35:00.530Z'
    request["api-version"] = 'v200'

    response = http.request(request)
    puts response.read_body
  end

  private
  def now_showing_url
    ENV["MOVIE_GLU_API_ENDPOINT"] + "/filmsNowShowing"
  end
  
  def headers
    {
      "Authorization" => ENV["MOVIE_GLU_AUTHORIZATION"],
      "x-api-key" => ENV["MOVIE_GLU_API_KEY"],
      "territory" => ENV["MOVIE_GLU_TERRITORY"],
      "client" => ENV["MOVIE_GLU_USERNAME"],
      "device-datetime" => '2019-08-08T10:35:00.530Z',
      "api-version" => ENV["MOVIE_GLU_API_VERSION"]
    }
  end
 
end
