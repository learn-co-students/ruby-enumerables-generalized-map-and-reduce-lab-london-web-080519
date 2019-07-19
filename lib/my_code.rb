# Your Code Here
def map(array)
  new = []
  array.length.times do |i|
    new << yield(array[i])
  end
  new
end

def reduce(array, starting_point = nil)
  if starting_point
    accumulator = starting_point
    index = 0
  else
    accumulator = array[0]
    index = 1
  end
  while index < array.length do
    accumulator = yield(accumulator, array[index])
    index += 1
  end
  accumulator
end