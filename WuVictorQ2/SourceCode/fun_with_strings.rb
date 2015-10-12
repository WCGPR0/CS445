module FunWithStrings
  def palindrome?
    str2 = self.gsub(/\W+/,'').downcase
    str2.eql? str2.reverse 
  end
  def count_words
   str2= self.gsub(/[^\w\s]/, '').downcase.split(" ")
   hash = Hash.new(0)
   puts hash
   str2.each do |val|
   hash[val] += 1
   end
  return hash
  end
  def anagram_groups
  str2 = self.split(/ /)
  str2.group_by { |element| element.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
