#Money takes in values in rupees and paise and adds and subtracts it after converting it to paise
class Money
  attr_reader :paise
    def initialize(rupees, paise)
      @paise = rupees*100 + paise
    end

    def +(other)
      Money.new(0, (@paise + other.paise))
    end

    def -(other)
      if( @paise > other.paise)
      Money.new(0, (@paise - other.paise))
      else
      Money.new(0, (other.paise - @paise))
    end
    end

    def ==(other)
      return false unless other.class == Money
      self.paise == other.paise
    end

    def eql?(other)
      self.paise == other.paise
    end

    def to_s
     "Rs #{(self.paise / 100) }& #{ ((self.paise % 100))} paise"
    end

end


