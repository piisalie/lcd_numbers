class LCDNumber
  def initialize(number, size = 2)
    @digits = number
    @size   = size
  end

  attr_reader :digits, :size

  def to_lcd
    "#{@digits} #{"-" * @size} \n#{"#{@digits}|#{"\s" * @size}|\n" * @size }"* 2 + "#{digits} #{"-" * @size} "
  end
end
