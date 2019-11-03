require_relative '../lib/resistor_color'

# Common test data version: 1.0.0 edf1778
RSpec.describe CLASS do
	it "test_black" do
		expect().to(eq())
		0, ResistorColor.color_code("black")
	end

	it "test_white" do
		expect().to(eq())
		9, ResistorColor.color_code("white")
	end

	it "test_orange" do
		expect().to(eq())
		3, ResistorColor.color_code("orange")
	end

	it "test_colors" do

		expected = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
		expect().to(eq())
		expected, ResistorColor::COLORS
	end
end
