def substrings(text, dictionary)
  values = Hash.new(0)
  text.downcase.split.each do |str|
    dictionary.each{|word| values[word]+=1 if str.include?(word)}
  end
  p values
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)