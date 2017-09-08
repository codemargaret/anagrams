class Words
  def initialize(word_1,word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def anagrams(word_1, word_2)
    sm_word_1 = word_1.downcase.delete(" ")
    sm_word_2 = word_2.downcase.delete(" ")
    word_1_letters = sm_word_1.split("")
    word_2_letters = sm_word_2.split("")
    letter_matches = []

    word_1_letters.each() do |letter|
      letter_matches.push(sm_word_2.match?(letter))
    end

    word_2_letters.each() do |letter|
      letter_matches.push(sm_word_1.match?(letter))
    end

    if (letter_matches.include?(false))
      "These words are not anagrams"
    else
      "These words are anagrams"
    end
  end #anagrams method

end #Words class
