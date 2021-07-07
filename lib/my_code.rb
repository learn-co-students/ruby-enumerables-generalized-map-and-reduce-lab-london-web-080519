# Your Code Here
def map(array)
  array.map{|e| yield(e)}
end

def reduce(array, start_point = 0)
  array.reduce(start_point){|element, n|  
    n == true ? yield(!!element, n) : yield(element,n) }
end
