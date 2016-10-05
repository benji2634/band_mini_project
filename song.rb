class Song

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def audience_response
    if name == "Smoke On The Water"
      return "air guitar"
    elsif name == "Wagon Wheel"
      return "dance"
    else
      return "sit and chat"
    end
  end

end

