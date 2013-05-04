require_relative "../lib/lcd_number"

describe LCDNumber do
  let(:number) { LCDNumber.new("23") }

  it "outputs each digit provided going across" do
    small = LCDNumber.new("1")
    big   = LCDNumber.new("12")
    expect(small.to_lcd.lines.first.size).to be < big.to_lcd.lines.first.size
  end

  it "defaults to a size of 2" do
    expect(number.size).to eq(2)
  end

  it "the number of lines returned is described by the size" do
    expect(number.to_lcd.lines.to_a.size).to eq((number.size * 2) + 3)
  end

  it "adjusts horizontal bars for the size" do
    expect(number.digits).to match(/[02-9]/)
    expect(number.to_lcd).to match(/\s-{#{number.size}}\s/)
  end
end
