require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  new_string = string.downcase.gsub(/\W/, " ") #delete all punctuation
  string_array = new_string.split(" ")  #make lowercase
  # for each substring from given string check to see if it 
  # matches any of the words in the dictionary
  string_array.each do |substring|
    dictionary.reduce(Hash.new(0)) do |substring_hash, dictstring|
    if dictstring.include? substring == true
       dictstring
    else
      
    end
  end

  end

end


puts substrings("below", dictionary)