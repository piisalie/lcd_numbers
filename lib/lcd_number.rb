class LCDNumber
  DIGITS =  [ [ " - ",
                "| |",
                "   ",
                "| |",
                " - " ],
              [ "   ",
                "  |",
                "   ",
                "  |",
                "   " ],
              [ " - ",
                "  |",
                " - ",
                "|  ",
                " - " ],
              [ " - ",
                "  |",
                " - ",
                "  |",
                " - " ],
              [ "   ",
                "| |",
                " - ",
                "  |",
                "   " ] ]

  def initialize(digits, size = 2)
    @digits = digits
    @size   = size
  end

  attr_reader :digits, :size

  def to_lcd
    lines = Array.new(DIGITS[1].size) { |i|
      digits.split("").map { |digit|
        l, c, r = DIGITS[digit.to_i][i].split("")
        l + c * size + r
      }.join(" ")
    }
    lines.flat_map { |line| line.include?("|") ? [line] * size : line }
         .join("\n")
  end
end
