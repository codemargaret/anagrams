require ('rspec')
require ('pry')
require ('anagram')

describe('#anagrams') do
  it('will tell you if two words are anagrams') do
    user_words = Anagram.new('ruby','bury')
    expect(user_words.anagrams).to(eq("These words are anagrams"))
  end

  it('will tell you if two words are not anagrams') do
    user_words = Anagram.new('on','jumbotron')
    expect(user_words.anagrams).to(eq("These words are not anagrams"))
  end

  it('will ignore capital letters') do
    user_words = Anagram.new('ruBy','bUry')
    expect(user_words.anagrams).to(eq("These words are anagrams"))
  end

  it('will ignore spaces') do
    user_words = Anagram.new('video game','give a demo')
    expect(user_words.anagrams).to(eq("These words are anagrams"))
  end

  it('will check for palindromes') do
    user_words = Anagram.new('avid','diva')
    expect(user_words.anagrams).to(eq("These words are palindromes"))
  end

  it('will require words with vowels') do
    user_words = Anagram.new('why hmph', 'she is an unbelievable diva')
    expect(user_words.anagrams).to(eq("You need to input actual words!"))
  end

  it('will check for antigrams') do
    user_words = Anagram.new('hi', 'bye')
    expect(user_words.anagrams).to(eq("These words have no letter matches and are antigrams!"))
  end

  it('will ignore punctuation') do
    user_words = Anagram.new("Anti-democratic time table", "Dictator came in, bet I'm late!")
    expect(user_words.anagrams).to(eq("These words are anagrams"))
  end
end
