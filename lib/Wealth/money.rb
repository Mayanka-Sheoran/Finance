#Money takes in values in rupees and paise and adds it after converting it to paise
class Money
  attr_reader :paise
    def initialize(rupees, paise)
      @paise = rupees*100 + paise
    end

    def +(other)
      Money.new(0, (@paise + other.paise))
    end

    def ==(other)
      self.paise == other.paise
    end

    def eql?(other)
      self.paise == other.paise
    end
end
