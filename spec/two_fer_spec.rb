require_relative '../lib/two_fer'

# Common test data version: 1.2.0 4fc1acb
RSpec.describe TwoFer do
	it "test_no_name_given" do
		expect(TwoFer.two_fer).to(eq("One for you, one for me."))
	end

	it "test_a_name_given" do
		expect(TwoFer.two_fer("Alice")).to(eq("One for Alice, one for me."))
	end

	it "test_another_name_given" do
		expect(TwoFer.two_fer("Bob")).to(eq("One for Bob, one for me."))
	end
end
