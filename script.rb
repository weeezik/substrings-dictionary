require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  new_string = string.downcase.gsub(/\W/, " ") #delete all punctuation
  string_array = new_string.split(" ")  #make lowercase
  
  binding.pry
  # for each substring from given string check to see if it 
  # matches any of the words in the dictionary
  string_array.each do |substring|
    dictionary.each do |dictstring|
    if dictstring == substring
      substring
    else
      next
    end
    binding.pry
  end

  end

end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)