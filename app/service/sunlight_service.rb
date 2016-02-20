class SunlightService
  attr_reader :key, :token, :connection

  def initialize
    @token = "?apikey=#{ENV['sunlight_key']}"
    @connection = Faraday.new('https://congress.api.sunlightfoundation.com')
  end

  def legislators
    JSON.parse(connection.get("/legislators#{token}").body)
  end
end
