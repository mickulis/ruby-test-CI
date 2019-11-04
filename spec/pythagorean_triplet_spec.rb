require_relative '../lib/pythagorean_triplet'

RSpec.describe Triplet do
  it "test_sum" do
    expect(Triplet.new(3, 4, 5).sum).to(eq(12))
  end

  it "test_product" do
    expect(Triplet.new(3, 4, 5).product).to(eq(60))
  end

  it "test_pythagorean" do
    expect(Triplet.new(3, 4, 5).pythagorean?) .to be true
  end

  it "test_not_pythagorean" do
    expect(Triplet.new(5, 6, 7).pythagorean?) .to be false
  end

  it "test_triplets_upto_10" do
    
    triplets = Triplet.where(max_factor: 10)
    products = triplets.map(&:product).sort
    expect(products).to(eq( [60, 480]))
  end

  it "test_triplets_from_11_upto_20" do
    
    triplets = Triplet.where(min_factor: 11, max_factor: 20)
    products = triplets.map(&:product).sort
    expect(products).to(eq( [3840]))
  end

  it "test_triplets_where_sum_x" do
    
    triplets = Triplet.where(sum: 180, max_factor: 100)
    products = triplets.map(&:product).sort
    expect(products).to(eq( [118_080, 168_480, 202_500]))
  end

  it "test_where_sum_1000" do
    
    triplets = Triplet.where(sum: 1_000, min_factor: 200, max_factor: 425)
    products = triplets.map(&:product)
    expect(products).to(eq( [31_875_000]))
  end
end
