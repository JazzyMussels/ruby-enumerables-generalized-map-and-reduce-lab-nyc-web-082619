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

def reduce(source_array, starting_point=0)
   if source_array.all?{|x| x.is_a?(Integer)}
     count = starting_point
     i = 0 
   while i < source_array.length 
   count += (source_array[i])
   i += 1 
   end
   return count 
  else if 
    source_array.all?{|x| return true if yield(x) == true}
  else if source_array.any?{|x| return false if yield(x) == false || yield(x) == nil}
  else 
   return true 
  end
end 
end 
end