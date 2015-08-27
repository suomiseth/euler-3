# 600851475143

require "Prime"

class LargestPrimeFactor

  def initialize(num)
    @num = num
  end

  def largest_prime
    i = Math.sqrt(@num).ceil
    while !(Prime.prime?(i) && @num % i == 0)
      i -= 1
    end
    i
  end
end

puts "number"
num = gets.strip.to_i
puts "answer #{LargestPrimeFactor.new(num).largest_prime}"