require "ruby-dictionary"
require "pry"

class WordChain

    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1,word2)
      word1 = word1.split(//)
      word2 = word2.split(//)

      first_letter_w1 = word1.first
      first_letter_w2 = word2.first

      first_letter_w1 = first_letter_w2

      # word1.each do |letter|
      # 	letter.replace(word2[0])
      # end
      binding.pry
    end

end
dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("cat", "dog")