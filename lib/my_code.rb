# Your Code Here
def map(array)
  i=0
  new_array = []
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end

def reduce(array, starting_value=nil)
  if starting_value
    total = starting_value
    i = 0
  else
    total = array[0]
    i = 1
  end
  
  while i < array.length do 
    total = yield(total, array[i])
    i += 1
  end
  total
end