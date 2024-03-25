require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  new_string = string.downcase.gsub(/\W/, " ") #downcase AND replace punctuation with spaces 
  substring_array = new_string.split(" ")  #turn standardized string into array split by words
  # binding.pry
  dictionary.reduce(Hash.new(0)) do |match_hash, dictstring|
    substring_array.each do |substring|
      # binding.pry
      if substring.include? dictstring
        if match_hash[dictstring] > 0
          match_hash[dictstring] += 1
          match_hash
        else
          match_hash[dictstring] = 1
          match_hash
        end
        # binding.pry
      else
        match_hash
        # binding.pry
      end
    end
    match_hash
  end
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)