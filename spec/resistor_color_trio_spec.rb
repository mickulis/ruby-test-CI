require_relative '../lib/resistor_color_trio'

RSpec.describe ResistorColorTrio do
  def test_orange_and_orange_and_black
    expect(ResistorColorTrio.new(["orange", "orange", "black"]).label).to(eq("Resistor value: 33 ohms"))
  end

  def test_blue_and_grey_and_brown
    expect(ResistorColorTrio.new(["blue", "grey", "brown"]).label).to(eq("Resistor value: 680 ohms"))
  end

  def test_red_and_black_and_red
    expect(ResistorColorTrio.new(["red", "black", "red"]).label).to(eq("Resistor value: 2 kiloohms"))
  end

  def test_green_and_brown_and_orange
    expect(ResistorColorTrio.new(["green", "brown", "orange"]).label).to(eq("Resistor value: 51 kiloohms"))
  end

  def test_yellow_and_violet_and_yellow
    expect(ResistorColorTrio.new(["yellow", "violet", "yellow"]).label).to(eq("Resistor value: 470 kiloohms"))
  end

  def test_invalid_color
    expect do
      ResistorColorTrio.new(["yellow", "purple", "black"]).label
    end.to(raise_error(ArgumentError))
  end
end
