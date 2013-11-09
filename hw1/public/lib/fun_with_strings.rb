module FunWithStrings
  
  def palindrome?
    str = self.gsub(/\W/,'').downcase
    str_rev = str.reverse

    (str == str_rev)
  end

  #"To be or not to be" # => {"to"=>2, "be"=>2, "or"=>1, "not"=>1}
  def count_words
    # functional way
    Hash[ self.downcase.
          scan(/\w+/).
          group_by{|w| w}.
          map{|w,ws| [w,ws.length]} ]
  end
  
=begin
  An anagram group is a group of words such that any one 
  can be converted into any other just by rearranging the 
  letters. For example, "rats", "tars" and "star" are an 
  anagram group.

  Given a space separated list of words in a single string, 
  write a method that groups them into anagram groups and 
  returns the array of groups. Case doesn't matter in 
  classifying string as anagrams (but case should be 
  preserved in the output), and the order of the anagrams 
  in the groups doesn't matter.
=end
  def anagram_groups
    self.scan(/\w+/).
         group_by{|w| w.downcase.each_char.sort}.
         values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
