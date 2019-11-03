require_relative '../lib/difference_of_squares'

# Common test data version: 1.2.0 1b6851d
RSpec.describe Squares do
  it "test_square_of_sum_1" do
    # 
    expect(Squares.new(1).square_of_sum).to(eq(1))
  end

  it "test_square_of_sum_5" do
    
    expect(Squares.new(5).square_of_sum).to(eq(225))
  end

  it "test_square_of_sum_100" do
    
    expect(Squares.new(100).square_of_sum).to(eq(25_502_500))
  end

  it "test_sum_of_squares_1" do
    
    expect(Squares.new(1).sum_of_squares).to(eq(1))
  end

  it "test_sum_of_squares_5" do
    
    expect(Squares.new(5).sum_of_squares).to(eq(55))
  end

  it "test_sum_of_squares_100" do
    
    expect(Squares.new(100).sum_of_squares).to(eq(338_350))
  end

  it "test_difference_of_squares_1" do
    
    expect(Squares.new(1).difference).to(eq(0))
  end

  it "test_difference_of_squares_5" do
    
    expect(Squares.new(5).difference).to(eq(170))
  end

  it "test_difference_of_squares_100" do
    
    expect(Squares.new(100).difference).to(eq(25_164_150))
  end
end
