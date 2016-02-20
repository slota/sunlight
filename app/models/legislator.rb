class Legislator
  attr_reader :state

  def self.all
    service_response = SunlightService.new.legislators["results"]
    service_response.map { |legislator| Legislator.new(legislator)}
  end

  def initialize(legislator)
    @state = legislator["state"]
  end

end
