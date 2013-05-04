require_relative "../lib/lcd_number"

describe LCDNumber do
  it "outputs each digit provided going across" do
    small = LCDNumber.new("1")
    big   = LCDNumber.new("12")
    expect(small.to_lcd.lines.first.size).to be < big.to_lcd.lines.first.size
  end
end