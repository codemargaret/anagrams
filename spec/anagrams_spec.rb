require ('rspec')
require ('pry')
require ('anagrams')

user_words = Words.new()

describe('#anagrams') do
  it('will split a word into letters') do
    expect(user_words.anagrams('on')).to(eq(['o','n']))
  end
end
