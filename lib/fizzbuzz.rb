class Fizzbuzz
	def is_divisible_by_three? num
      is_divisible_by?(num, 3)
	end

	def is_divisible_by_five? num
		is_divisible_by?(num, 5)
	end

	def is_divisible_by_fifteen? num
      is_divisible_by?(num, 15)
	end

	def is_divisible_by?(num, divisor)
      num % divisor == 0
	end

	def prints_out_for num
      return 'FizzBuzz' if is_divisible_by_fifteen?(num)
      return 'Fizz' if is_divisible_by_three?(num)
      return 'Buzz' if is_divisible_by_five?(num)
      return num 
	end
    
    def game(num)
      1.upto(num){|x| puts prints_out_for(x)}
    end

end

fizzbuzz_game = Fizzbuzz.new

puts fizzbuzz_game.prints_out_for(10)

fizzbuzz_game.game(100)