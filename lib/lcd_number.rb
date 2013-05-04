class LCDNumber
  def initialize(number, size = 2)
    @digits = number
    @size   = size
  end

  attr_reader :digits, :size

  def to_lcd
    ([@digits] * (size * 2 + 3)).join("\s#{"-"*@size}\s\n")
  end
end
