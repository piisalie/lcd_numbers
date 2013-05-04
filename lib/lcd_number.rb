class LCDNumber
  def initialize(number)
    @number = number
  end

  def to_lcd
    ([@number] * 5).join("\n")
  end
end
