class Band

  attr_accessor :total_cash, :name, :gigs, :fee
 
  def initialize (total_cash, members, songs, name)
    @total_cash = total_cash
    @members = members
    @songs = songs
    @name = name
    @gigs = []
  end

  def drummer_name
    return @members[:drummer]
  end

  def bassist_name
    return @members[:bassist]
  end

  def number_of_songs
    return @songs.length
  end

  def add_gig(gig)
    @gigs << gig
  end

  def add_fee(gig)
    return @total_cash += gig.fee
    # [:fee]
  end


end