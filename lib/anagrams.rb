class Words
  # def initialize(word_1, word_2)
  #   @word_1 = word_1
  #   @word_2 = word_2
  # end

  def anagrams(word_1, word_2)
    word_1_letters = word_1.split("")
    word_2_letters = word_2.split("")
    truth_array = []

    word_1_letters.each() do |letter|
      truth_array.push(word_2.match?(letter))
    end

    word_2_letters.each() do |letter|
      truth_array.push(word_1.match?(letter))
    end
    truth_array
  end
end
