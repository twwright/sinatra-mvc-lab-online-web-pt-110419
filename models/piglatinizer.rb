class PigLatinizer
	def piglatinize(input)
		if input.split(" ").length == 1
			pigit(input)
		else
			sentence(input)
		end
	end

	def sentence(input)
		input.split(" ").collect { |word| pigit(word) }.join(" ")
	end

	def consonant?(char)
		!char.match(/[aAeEiIoOuU]/)
	end

	def pigit(input)
		if !consonant?(input[0])
			way(input)
		else
			ay(input)
		end
	end

	def ay(input)
		if consonant?(input[0]) && consonant?(input[1]) && consonant?(input[2])
			input.slice(3..-1) + input.slice(0,3) + "ay"
		elsif input[2] != nil && consonant?(input[0]) && consonant?(input[1])
			input.slice(2..-1) + input.slice(0,2) + "ay"
		else
			input.slice(1..-1) + input.slice(0) + "ay"
		end
	end

	def way(input)
		input + "way"
	end
end