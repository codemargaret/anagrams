require ('rspec')
require ('pry')
require ('anagrams')

user_words = Words.new()

describe('#anagrams') do
  # it('will split a word into letters') do
  #   expect(user_words.anagrams('on')).to(eq(['o','n']))
  # end

  it('will see if the first letter of word_1 matches any letters in word_2') do
    expect(user_words.anagrams('on','jumbotron')).to(eq(true))
  end
end
