#def map(array)
#  new_array = []
#  n = 0
#  while n < array.length
#    new_array << yield(arr[n])
#    n += 1
#  end
#  new_array
#end

def map(array)
output_array = []
  n = 0
  while n < array.length
    output_array << yield(array[n])
    n += 1
  end
return output_array
end


def reduce(array, starting_point = 0)
#output_array = []

if starting_point > 0

aggrigate = starting_point
  n = 0
else
aggrigate = array[0]
n = 1
end


  while n < array.length
    aggrigate = yield(aggrigate, array[n])
    n += 1
  end
return aggrigate
end
