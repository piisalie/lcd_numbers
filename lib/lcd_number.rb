class LCDNumber
  def initialize(number)
    @digits = number
    @size   = 2
  end
  attr_reader :digits, :size

  def to_lcd
    ([@digits] * (size * 2 + 3)).join("\s#{"-"*@size}\s\n")
  end

end
