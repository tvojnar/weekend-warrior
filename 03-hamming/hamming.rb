class Hamming
  def initialize
  end #initialize

  def self.compute(homolog_1, homolog_2)
    string_1 = homolog_1.chars #makes string into an array with each letter as an element
    string_2 = homolog_2.chars

    if string_1.length > string_2.length
      raise ArgumentError.new("Both DNA strands much be the same length. Please enter the same numbner of base pairs for each strand.")
    elsif string_1.length < string_2.length
      raise ArgumentError.new("Both DNA strands much be the same length. Please enter the same numbner of base pairs for each strand.")
    elsif string_1.length == string_2.length
      ham = 0
      i = 0
      string_1.each do |nuc_acid|
        puts i
        if nuc_acid != string_2[i]
          ham += 1
        end #if
        i += 1
      end  #.each
      return ham
    end
  end #compute

end #Hamming

test = Hamming.compute("ATCG", "ATCG")

puts test
