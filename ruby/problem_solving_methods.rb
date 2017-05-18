# Method to take an array of integers and an integer to search for, then return the index of the number or return nil if not there
integer_array = [66, 5, 9, 23, 100, 76, 4]

def search_array(array, i)
  index = 0
  array.each do |integer|
    if integer == i
      puts index
    else
      index += 1
    end
  end
end

# Define a method to generate Fibonacci numbers based on the integer given as a parameter
def fib(i)
  fib_array = []
  index = 0
  if i <= 0
    puts "Please use numbers greater than 0."
  elsif i == 1
    fib_array << 0
  elsif i == 2
    fib_array << 0
    fib_array << 1
  else
    fib_array << 0
    fib_array << 1
    until fib_array.length >= i
      fib_array << (fib_array[-1] + fib_array[-2])
  end
  p fib_array
  end
end

# Bubble sort
# Start by defining a method with the array as its parameter
# Find the arrays length and assign it to a variable
# Initiate a loop that will compare the numbers and return them to the array
# Begin by comparing each item with the item next to it and swap if the second item is smaller
# Go through the array repeating that process, then start from the beginning again
# If no swaps were completed after going through the entire array, end the process and print out the results
def b_sort(array)
  v = array.length
  loop do
    swap = false
    (v-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    break if not swap
  end
  p array
end