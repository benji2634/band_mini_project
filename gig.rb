class Gig

attr_reader :venue, :fee

  def initialize(venue, fee)
    @venue = venue
    @fee = fee
  end
  
end