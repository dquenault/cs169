#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
<<<<<<< HEAD
  a = str.gsub(/\W/,"").downcase
  a == a.reverse 
end

def count_words(str)
  word_array = str.downcase.split(/\W/)
  result = Hash.new(0)
  word_array.each { |x| result[x] =+ 1}
  puts result
end

def count_words_old(str)
=======
  # YOUR CODE HERE
  a = str.downcase.gsub(/\W/)
  a == a.reverse
end

def count_words(str)

array = Hash.new(0)


>>>>>>> 01e555a7f8790c406271e5165d288aefd0318dfd
  # Create result hash (key value pair)
  result = Hash.new
  total = 0
 
  # Scan input from file and add to hash 
  str.scan(/\w+/i) {|w|
	w.downcase!
	if result.has_key?(w) then
	  # Key exists so increment the counter
	  result[w] = result[w] + 1
	else
	  # Key does not exist so add word to hash
	  result.merge!({w => 1})
	end
	total = total + 1
  }
  # Print hash map
  p result
  return total
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"

if palindrome? test_str
	p "blah blah blaa"
#  puts test_str " is a palindrome!"
else
   puts " Not a palindrome"
#  puts test_str " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count

count_words("A man, a plan, a canal -- Panama")
    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
    # => {'doo' => 3, 'bee' => 2}
