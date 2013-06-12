class Scrabble

  @letter_tiers = [["a","e","i","o","u","l","n","r","s","t"],["d","g"],["b","c","m","p"],["f","h","v","w","y"],["k"],["j","x"],["q","z"]]
  def self.score word
  @word_score=0

    if word == nil
      return 0
    end
    eval = word.downcase.split("")
    eval.map! do |char|
      case
      when @letter_tiers[0].include?(char)
        @word_score += 1
      when @letter_tiers[1].include?(char)
        @word_score += 2
      when @letter_tiers[2].include?(char)
        @word_score += 3
      when @letter_tiers[3].include?(char)
        @word_score += 4
      when @letter_tiers[4].include?(char)
        @word_score += 5
      when @letter_tiers[5].include?(char)
        @word_score += 8
      when @letter_tiers[6].include?(char)
        @word_score += 10
      end
    end
    puts @word_score
    
  end

end


Scrabble.score("zap")
Scrabble.score("cabbage")
Scrabble.score("dog")
Scrabble.score("MULTIBILLIONAIRE")









require_relative './scrabble'
require 'minitest/autorun'


class ScrabbleTest < MiniTest::Unit::TestCase
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.score("")
  end

  def test_nil_word_scores_zero
    assert_equal 0, Scrabble.score(nil)
  end

  def test_scores_very_short_word
    assert_equal 1, Scrabble.score('a')
  end

  def test_simple_word_scores_the_number_of_letters
    assert_equal 6, Scrabble.score("street")
  end

  def test_complicated_word_scores_more
    assert_equal 22, Scrabble.score("quirky")
  end

  def test_case_insensitive
    assert_equal 20, Scrabble.score("MULTIBILLIONAIRE")
  end
end