# Convert the input string into an array of integers
# Check if the array contains any non-numeric elements
# Sort the array in ascending order
# Check if the array forms a complete sequence of integers starting with 1
 # Check if the array forms a partial sequence of integers starting with 1

def find_missing_number(str)
    arr = str.split.map(&:to_i)
  
    if arr.any? { |n| n.to_s != n.to_i.to_s }
      return 1
    end
  
    arr.sort!
  
    if arr == (1..arr.last).to_a
      return 0
    end



puts find_missing_number("1 2 3 4") # Output: 0
puts find_missing_number("1 2 4 3") # Output: 0
puts find_missing_number("2 1 3 a") # Output: 1
puts find_missing_number("1 3 2 5") # Output: 4
puts find_missing_number("1 5")     # Output: 2

  
   
    missing_numbers = (1..arr.last).to_a - arr
    if missing_numbers.any?
      return missing_numbers.first
    end
  end
  