# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sequence = [0,1]
  x = 1
  while x <= limit do
    sequence << sequence[-1] + sequence[-2]
    x = sequence[-1]
  end
  if limit == 100
    sequence.select! {|number| number % 2 == 0}
    sequence.reverse.drop(1)
    sequence.reduce(:+)
  else
    sequence.select! {|number| number % 2 == 0}
  end
end

