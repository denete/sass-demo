module Sass::Script::Functions
	def reverse(string)
		assert_type string, :String
		Sass::Script::String.new(string.value.reverse)
	end
	declare :reverse, :args => [:string]

	def rand_color()
		Sass::Script::Color.new([rand(255), rand(255), rand(255)])
	end
end