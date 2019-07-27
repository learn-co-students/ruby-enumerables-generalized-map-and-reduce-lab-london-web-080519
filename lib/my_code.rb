# Your Code Here
def map(source_array)
  new_array = []
  
  for i in source_array
    new_i = yield(i)
    new_array.push(new_i)   
  end
  
  new_array
end

def reduce(source_array, starting_point = 0)
  keep_track = starting_point
  
  for i in source_array
    keep_track = yield(keep_track, i)
    puts keep_track
  end
  
  keep_track
end