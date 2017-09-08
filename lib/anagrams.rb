class Words
  # def initialize(word_1, word_2)
  #   @word_1 = word_1
  #   @word_2 = word_2
  # end

  def anagrams(word_1, word_2)
    word_1_letters = word_1.split("")
    word_2.match?(word_1_letters[0])
  end
end
