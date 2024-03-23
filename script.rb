dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (string, dictionary)
  new_string = string.downcase.gsub(/\W/, " ") #delete all punctuation
  string_array = new_string.split(" ")  #make lowercase

  overlap_array = dictionary - (dictionary - string_array)
  overlap_array.reduce(Hash.new(0)) do |substring_count_hash, substring|
    substring_count_hash[substring] = 1
    substring_count_hash
  end

end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)