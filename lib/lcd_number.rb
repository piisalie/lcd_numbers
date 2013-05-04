class LCDNumber
  def initialize(number)
    @number = number
  end

  def to_lcd
    ([@number] * (size * 2 + 3)).join("\n")
  end

  def size
    2
  end
end
