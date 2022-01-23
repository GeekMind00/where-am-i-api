# require 'httparty'
require 'url_api'
class WhereamiController < ApplicationController
  def index
    @ip = client_ip
    @country = country_code
    @language = client_language

    render json: decorate, status: 200
  end

  private

  def client_ip
    request.ip
    # '157.240.203.35'
  end

  def country_code
    api = UrlApi.new
    url = "https://jsonmock.hackerrank.com/api/ip/#{@ip}"
    res = api.get(url)
    if res.empty?
      nil
    else
      res['data']['country']
    end
  end

  def client_language
    http_accept_language.user_preferred_languages[0]
  end

  def decorate
    {
      ip: @ip,
      country: @country,
      language: @language
    }
  end
end
