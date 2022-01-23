require 'httparty'

class UrlApi
  def get(url)
    HTTParty.get(url)
    # TODO: more error checking (500 error, etc)
    # json = JSON.parse(response.body)
    # json['url']
  end
end
