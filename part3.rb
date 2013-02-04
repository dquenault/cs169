def combine_anagrams(words)
 # YOUR CODE HERE
 result = Array.new { Array.new }
 words.each do |w| 
       test = w.to_s.sort.lowercase
       p test
     #        result.each do |a| 
      #         a.each do |b|
       #         if b.sort.match(/w.sort/) 
        #          result[a].push(w) 
         #       else
          #        result.push(w)
           #     end
            #   end
            # end 
          end
end

test_array = ["cars", "for", 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 
# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]
#puts test_array
combine_anagrams(test_array)
