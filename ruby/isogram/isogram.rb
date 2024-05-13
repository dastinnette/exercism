=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
    def self.isogram?(word)
      word = word.downcase
      letter_count = Hash.new(0)
      
      word.each_char do |char|
        next if char == ' ' || char == '-'
        return false if letter_count[char] > 0
        letter_count[char] += 1
      end
      
      return true
    end
  end