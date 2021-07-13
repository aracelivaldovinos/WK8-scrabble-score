require('rspec')
require('scrabble_score')
require('pry')

describe('#scrabble_score') do
it("returns a scrabble score for a letter") do
  word1 = Word.new("a")
  expect(word1.scrabble()).to(eq(1))
 end
 
 it("returns a scrabble score for a two letter word") do
  word1 = Word.new("go")
  expect(word1.scrabble()).to(eq(3))
 end
 it("returns a scrabble score for any word") do
  word1 = Word.new("phenomenal")
  expect(word1.scrabble()).to(eq(17))
 end

end