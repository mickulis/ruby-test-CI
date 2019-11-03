require_relative '../lib/resistor_color'

# Common test data version: 1.0.0 edf1778
RSpec.describe CLASS do
	it "test_black" do
		expect(ResistorColor.color_code("black")).to(eq(expected))
	end

	it "test_white" do
		expect(ResistorColor.color_code("white")).to(eq(expected))
	end

	it "test_orange" do
		expect(ResistorColor.color_code("orange")).to(eq(expected))
	end

	it "test_colors" do
		expected = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
		expect(ResistorColor::COLORS).to(eq(expected))
	end
end
