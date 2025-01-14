# Your Code Here
def map(array)
  new = []
  i = 0 
  while i < array.length 
  new << yield(array[i])
  i += 1 
end 
new 
end

def reduce(source_array, starting_point=nil)
  if starting_point
    sum = starting_point
    i = 0 
  else
    sum = source_array[0]
    i = 1 
  end
  while i < source_array.length 
    sum = yield(sum, source_array[i])
    i += 1 
  end
  sum 
end