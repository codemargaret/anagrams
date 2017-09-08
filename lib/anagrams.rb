class Words
  include Enumerable

  def initialize(word_1,word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def is_word(word_1,word_2)
    word_1_array = word_1.split(" ")
    word_2_array = word_2.split(" ")
    words_from_both = word_1_array.concat(word_2_array)
    real_words = []
    not_words = []

    words_from_both.each do |word|
      if (word.include?("a")) || (word.include?("e")) || (word.include?("i")) || (word.include?("o")) || (word.include?("u")) || (word.include?("y"))
        real_words.push(word)
      else
        not_words.push(word)
      end
    end

    if not_words.empty?
      "Ok, let's look for anagrams"
    else
      "You need to input actual words!"
    end
  end#is_word method

  def anagrams(word_1, word_2)
    sm_word_1 = word_1.downcase.delete(" ")
    sm_word_2 = word_2.downcase.delete(" ")

    word_2_rev = sm_word_2.reverse

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
    elsif (sm_word_1 == word_2_rev)
      "These words are palindromes"
    else
      "These words are anagrams"
    end
  end #anagrams method

end #Words class
