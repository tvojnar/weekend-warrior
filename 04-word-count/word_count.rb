
def words(string)
  words = string.split(' ')
 frequency = Hash.new(0)
 words.each { |word| frequency[word] += 1 }
 return frequency
end
