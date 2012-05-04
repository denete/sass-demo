require 'sass'

module CustomFunctions
	def reverse(string)
		assert_type string, :String
		Sass::Script::String.new(string.value.reverse)
	end
	Sass::Script::declare :reverse, :args => [:string]
end

module Sass::Script::Functions
	include CustomFunctions
end


# Returns a random number from the max
#    def random(value)
#      assert_type value, :Number
#      rand(value)
#    end
#    declare :random, [:value]
