require_relative '../lib/sum_of_multiples'

RSpec.describe SumOfMultiples do
  it "test_no_multiples_within_limit" do
    # 
    sum_of_multiples = SumOfMultiples.new(3, 5)
    expect(sum_of_multiples.to(1)).to(eq( 0))
  end

  it "test_one_factor_has_multiples_within_limit" do
    
    sum_of_multiples = SumOfMultiples.new(3, 5)
    expect(sum_of_multiples.to(4)).to(eq( 3))
  end

  it "test_more_than_one_multiple_within_limit" do
    
    sum_of_multiples = SumOfMultiples.new(3)
    expect(sum_of_multiples.to(7)).to(eq( 9))
  end

  it "test_more_than_one_factor_with_multiples_within_limit" do
    
    sum_of_multiples = SumOfMultiples.new(3, 5)
    expect(sum_of_multiples.to(10)).to(eq( 23))
  end

  it "test_each_multiple_is_only_counted_once" do
    
    sum_of_multiples = SumOfMultiples.new(3, 5)
    expect(sum_of_multiples.to(100)).to(eq( 2_318))
  end

  it "test_a_much_larger_limit" do
    
    sum_of_multiples = SumOfMultiples.new(3, 5)
    expect(sum_of_multiples.to(1_000)).to(eq( 233_168))
  end

  it "test_three_factors" do
    
    sum_of_multiples = SumOfMultiples.new(7, 13, 17)
    expect(sum_of_multiples.to(20)).to(eq( 51))
  end

  it "test_factors_not_relatively_prime" do
    
    sum_of_multiples = SumOfMultiples.new(4, 6)
    expect(sum_of_multiples.to(15)).to(eq( 30))
  end

  it "test_some_pairs_of_factors_relatively_prime_and_some_not" do
    
    sum_of_multiples = SumOfMultiples.new(5, 6, 8)
    expect(sum_of_multiples.to(150)).to(eq( 4_419))
  end

  it "test_one_factor_is_a_multiple_of_another" do
    
    sum_of_multiples = SumOfMultiples.new(5, 25)
    expect(sum_of_multiples.to(51)).to(eq( 275))
  end

  it "test_much_larger_factors" do
    
    sum_of_multiples = SumOfMultiples.new(43, 47)
    expect(sum_of_multiples.to(10_000)).to(eq( 2_203_160))
  end

  it "test_all_numbers_are_multiples_of_1" do
    
    sum_of_multiples = SumOfMultiples.new(1)
    expect(sum_of_multiples.to(100)).to(eq( 4_950))
  end

  it "test_no_factors_means_an_empty_sum" do
    
    sum_of_multiples = SumOfMultiples.new()
    expect(sum_of_multiples.to(10_000)).to(eq( 0))
  end

  it "test_the_only_multiple_of_0_is_0" do
    
    sum_of_multiples = SumOfMultiples.new(0)
    expect(sum_of_multiples.to(1)).to(eq( 0))
  end

  it "test_solutions_using_include_exclude_must_extend_to_cardinality_greater_than_3" do
    
    sum_of_multiples = SumOfMultiples.new(2, 3, 5, 7, 11)
    expect(sum_of_multiples.to(10_000)).to(eq( 39_614_537))
  end
end
