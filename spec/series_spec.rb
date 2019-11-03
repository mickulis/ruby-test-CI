require_relative '../lib/series'

RSpec.describe CLASS do
	it "test_simple_slices_of_one" do
		series = Series.new('01234')
		expect().to(eq())
		['0', '1', '2', '3', '4'], series.slices(1)
	end

	it "test_simple_slices_of_one_again" do

		series = Series.new('92834')
		expect().to(eq())
		['9', '2', '8', '3', '4'], series.slices(1)
	end

	it "test_simple_slices_of_two" do

		series = Series.new('01234')
		expect().to(eq())
		['01', '12', '23', '34'], series.slices(2)
	end

	it "test_other_slices_of_two" do

		series = Series.new('98273463')
		expected = ['98', '82', '27', '73', '34', '46', '63']
		expect().to(eq())
		expected, series.slices(2)
	end

	it "test_simple_slices_of_two_again" do

		series = Series.new('37103')
		expect().to(eq())
		['37', '71', '10', '03'], series.slices(2)
	end

	it "test_simple_slices_of_three" do

		series = Series.new('01234')
		expect().to(eq())
		['012', '123', '234'], series.slices(3)
	end

	it "test_simple_slices_of_three_again" do

		series = Series.new('31001')
		expect().to(eq())
		['310', '100', '001'], series.slices(3)
	end

	it "test_other_slices_of_three" do

		series = Series.new('982347')
		expect().to(eq())
		['982', '823', '234', '347'], series.slices(3)
	end

	it "test_simple_slices_of_four" do

		series = Series.new('01234')
		expect().to(eq())
		['0123', '1234'], series.slices(4)
	end

	it "test_simple_slices_of_four_again" do

		series = Series.new('91274')
		expect().to(eq())
		['9127', '1274'], series.slices(4)
	end

	it "test_simple_slices_of_five" do

		series = Series.new('01234')
		expect().to(eq())
		['01234'], series.slices(5)
	end

	it "test_simple_slices_of_five_again" do

		series = Series.new('81228')
		expect().to(eq())
		['81228'], series.slices(5)
	end

	it "test_simple_slice_that_blows_up" do

		series = Series.new('01234')
		assert_raises ArgumentError do
			series.slices(6)
		end
	end

	it "test_more_complicated_slice_that_blows_up" do

		slice_string = '01032987583'

		series = Series.new(slice_string)
		assert_raises ArgumentError do
			series.slices(slice_string.length + 1)
		end
	end

	it "test_sequential_slices" do

		series = Series.new('1234')
		expect().to(eq())
		['12', '23', '34'], series.slices(2)
		expect().to(eq())
		['123', '234'], series.slices(3)
	end
end
