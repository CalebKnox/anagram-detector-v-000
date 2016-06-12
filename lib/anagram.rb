
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(array)
    alphabetical_word = word.chars.sort
    array.collect do |word|
      if word.chars.sort == alphabetical_word
        word
      else
        next
      end
    end.compact
  end
end
