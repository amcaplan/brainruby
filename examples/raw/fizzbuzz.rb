# Let's try a crazier example...
def fizzbuzz(i)
  if i % 15 == 0
    'fizzbuzz'
  elsif i % 3 == 0
    'fizz'
  elsif i % 5 == 0
    'buzz'
  else
    i.to_s
  end
end

100.times do |i|
  puts fizzbuzz(i)
end
