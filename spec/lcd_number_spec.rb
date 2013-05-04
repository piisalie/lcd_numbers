require_relative "../lib/lcd_number"

describe LCDNumber do
  let(:number) { LCDNumber.new("23", rand(1..10)) }

  it "outputs each digit provided going across" do
    small = LCDNumber.new("1")
    big   = LCDNumber.new("12")
    expect(small.to_lcd.lines.first.size).to be < big.to_lcd.lines.first.size
  end

  it "defaults to a size of 2" do
    expect(LCDNumber.new("42").size).to eq(2)
  end

  it "changes size based on user input" do
    expect(LCDNumber.new("42", 4).size).to eq(4)
  end

  it "the number of lines returned is described by the size" do
    expect(number.to_lcd.lines.to_a.size).to eq((number.size * 2) + 3)
  end

  it "adjusts horizontal bars for the size" do
    expect(number.digits).to match(/[02-9]/)
    expect(number.to_lcd).to match(/\s-{#{number.size}}\s/)
  end

  it "adjusts vertical bars for the size" do
    output  = number.to_lcd
    aoa     = output.lines.map { |line| line.chomp.chars.to_a }
    flipped = aoa.transpose.map { |line| line.join }.join("\n")
    expect(flipped).to match(/\s\|{#{number.size}}\s/)
  end

  it "it renders each digit correctly" do
    one = "    \n   |\n    \n   |\n    "
    expect(LCDNumber.new("1", 1)).to eq(one)
  end
end
