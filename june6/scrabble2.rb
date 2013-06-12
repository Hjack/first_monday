# require 'minitest/autorun'

# class ScrabbleTest < MiniTest::Unit::TestCase
#   def test_empty_word_scores_zero
#     assert_equal 0, Scrabble.score("")
#   end

#   def test_nil_word_scores_zero
#     assert_equal 0, Scrabble.score(nil)
#   end

#   def test_scores_very_short_word
#     assert_equal 1, Scrabble.score('a')
#   end

#   def test_simple_word_scores_the_number_of_letters
#     assert_equal 6, Scrabble.score(street)
#   end

#   def test_complicated_word_scores_more
#     assert_equal 22, Scrabble.score("quirky")
#   end

#   def test_case_insensitive
#     assert_equal 20, Scrabble.score("MULTIBILLIONAIRE")
#   end
# end


class Scrabble

  def self.score  (word,doubler)
    @word_score = 0
    @letter_tiers = {
      1 => ["a","e","i","o","u","l","n","r","s","t"],
      2 => ["d","g"],
      3 => ["b","c","m","p"],
      4 => ["f","h","v","w","y"],
      5 => ["k"],
      8 => ["j","x"],
      10 => ["q","z"]
    }
    if word != nil
      eval = word.downcase.split("")
      eval.map! do |char|
        @letter_tiers.each do |k,v|
          if v.include?(char)
            @word_score = @word_score + k
          end
        end
      end
    end
    puts @word_score
  end

end

Scrabble.score("cabbage")
Scrabble.score("truly")
Scrabble.score("sorted")
Scrabble.score("whatssssss")


