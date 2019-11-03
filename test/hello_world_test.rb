require 'minitest/autorun'
require_relative '../lib/hello_world'


# Common test data version: 1.1.0 be3ae66
class HelloWorldTest < Minitest::Test
	def test_say_hi
		# skip
		assert_equal "Hello, World!", HelloWorld.hello
	end
end
