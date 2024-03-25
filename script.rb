require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  new_string = string.downcase.gsub(/\W/, " ") #downcase AND replace punctuation with spaces 
  substring_array = new_string.split(" ")  #turn standardized string into array split by words

  substring_array

  substring_array.each do |substring|     #runs below one substring at a time
    dictionary.reduce(Hash.new(0)) do |substring_count_hash, dictionary_string|
      if substring.include?dictionary_string      #if the substring word contains any of the dictionary strings, the dictionary strings that are contained within the substring word will be added to the hash X times
        substring_count_hash[dictionary_string] = 1  #replace with counter
        substring_count_hash
      else
        p substring_count_hash
      end
    end
  end
end


puts substrings("below", dictionary)