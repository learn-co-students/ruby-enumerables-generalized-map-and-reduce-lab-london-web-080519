# Your Code Here

def map_to_negativize(source_array)
  yield 
end

new = [4, 6, 8]

map_to_negativize(new) do |x|
  new << x * -1
  puts new
end

