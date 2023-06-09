# Code-2


## Broken Sequence
You receive some random elements as a space-delimited string. Check if the elements are part of an ascending sequence of integers starting with 1, with an increment of 1 (e.g. 1, 2, 3, 4).

Return:

0 if the elements can form such a sequence, and no number is missing ("not broken", e.g. "1 2 4 3")
1 if there are any non-numeric elements in the input ("invalid", e.g. "1 2 a")
n if the elements are part of such a sequence, but some numbers are missing, and n is the lowest of them ("broken", e.g. "1 2 4" or "1 5")
Examples
"1 2 3 4"  ==>  return 0, because the sequence is complete

"1 2 4 3"  ==>  return 0, because the sequence is complete (order doesn't matter)

"2 1 3 a"  ==>  return 1, because it contains a non numerical character

"1 3 2 5"  ==>  return 4, because 4 is missing from the sequence

"1 5"      ==>  return 2, because the sequence is missing 2, 3, 4 and 2 is the lowest



# Challenge 2
To find the volume (centimeters cubed) of a cuboid you use the formula:

volume = Length * Width * Height

But someone forgot to use proper record keeping, so we only have the volume, and the length of a single side! It's up to you to find out whether the cuboid has equal sides (= is a cube).

Return true if the cuboid could have equal sides, return false otherwise.

Return false for invalid numbers too (e.g volume or side is less than or equal to 0).

Note: side will be an integer

The function cube_checker takes two arguments, volume and side, representing the volume of the cuboid and the length of one of its sides respectively.

The function first checks if either volume or side is less than or equal to 0, which would make the input invalid. If either of them is 0 or negative, the function returns false.

If the input is valid, the function calculates the length of the other sides of the cuboid by taking the cube root of the volume divided by the length of one side. If the length of the other sides is equal to the given length side, then it is a cube and the function returns true. Otherwise, the function returns false.

Note that cube_side.to_i is used to truncate the float value of cube_side to an integer value so that it can be compared to the integer value of side.

# Author and Licence
Code written by Dennis Mwenda Mugambi