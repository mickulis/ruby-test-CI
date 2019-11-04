require_relative '../lib/perfect_numbers'

RSpec.describe PerfectNumber do
  it "test_initialize_perfect_number" do
    expect do
			PerfectNumber.classify(-1)
		end.to(raise_error(RuntimeError))
  end

  it "test_classify_deficient" do
    expect(PerfectNumber.classify(13)).to(eq( 'deficient'))
  end

  it "test_classify_perfect" do
    expect(PerfectNumber.classify(28)).to(eq( 'perfect'))
  end

  it "test_classify_abundant" do
    expect(PerfectNumber.classify(12)).to(eq( 'abundant'))
  end
end
