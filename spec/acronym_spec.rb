require_relative '../lib/acronym'

RSpec.describe Acronym do
	it "test_basic" do
		expect(Acronym.abbreviate('Portable Network Graphics')).to(eq("PNG"))
	end

	it "test_lowercase_words" do
		expect(Acronym.abbreviate('Ruby on Rails')).to(eq("ROR"))
	end

	it "test_punctuation" do
        expect(Acronym.abbreviate('First In, First Out')).to(eq("FIFO"))
	end

	it "test_all_caps_word" do
        expect(Acronym.abbreviate('GNU Image Manipulation Program')).to(eq("GIMP"))
	end

	it "test_punctuation_without_whitespace" do
        expect(Acronym.abbreviate('Complementary metal-oxide semiconductor')).to(eq("CMOS"))
	end

	it "test_very_long_abbreviation" do
        expect(Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')).to(eq("ROTFLSHTMDCOALM"))
	end

	it "test_consecutive_delimiters" do
        expect(Acronym.abbreviate('Something - I made up from thin air')).to(eq("SIMUFTA"))
	end
end
