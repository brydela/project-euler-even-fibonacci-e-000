# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end
  def sum
 sequence = [0,1]
  x = 1
  while x <= limit do
    sequence << sequence[-1] + sequence[-2]
    x = sequence[-1]
  end
  sequence.select! {|number| number % 2 == 0}
  sequence.reduce(:+)
  end
end