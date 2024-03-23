dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  substring_array = string.split(" ")
  #delete all punctuation
  #make lowercase
  puts substring_array
  substring_array.reduce(Hash.new(0)) do |substring_hash, substring|
    dictionary.each do |dict|
      if dict.downcase == substring.downcase
        substring_hash[substring] = 1
        substring_hash
      else
        substring_hash
      end
    end
    end
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)