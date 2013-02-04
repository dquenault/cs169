
def palindrome?(str)
  a = str.gsub(/\W/,"").downcase
  a == a.reverse 
end

def count_words(str)
  word_array = str.downcase.split(/\W/)
  result = Hash.new(0)
  word_array.each { |x| result[x] += 1}
  p result
end

test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"

word_count = count_words test_str
puts word_count

count_words("A man, a plan, a canal -- Panama")
    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
    # => {'doo' => 3, 'bee' => 2}
