# Your Code Here

def map(source_array)
  source_array.map { |element|
    yield(element)
  }
end

def reduce(source_array, starting_point = 0)
  source_array.reduce(starting_point) { |sum, element|
    yield(sum, element)
  }
end
