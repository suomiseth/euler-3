# 600851475143

require "Prime"

class LargestPrimeFactor

  def initialize(num)
    @num = num
  end

  def largest_prime
    (1..Math.sqrt(@num).ceil).to_a.reverse.find{|n| Prime.prime?(n) && @num % n == 0}
  end
end

puts "number"
num = gets.strip.to_i
puts "answer #{LargestPrimeFactor.new(num).largest_prime}"