# 600851475143

require "Prime"

class LargestPrimeFactor

  def initialize(num)
    @num = num
  end

  def largest_prime
    i = 0
    answ = nil
    while i <= Math.sqrt(@num)
      answ = i if (Prime.prime?(i) && @num % i == 0)
      i += 1
    end
    answ  
  end
end

puts "number"
num = gets.strip.to_i
puts "answer #{LargestPrimeFactor.new(num).largest_prime}"