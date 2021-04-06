class PigLatinizer 

def piglatinize(word)
    piglatin_here(word)

end

def to_pig_latin(sentece)
    piglatin_here(sentece)

end


def piglatin_here(some_text)

    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = %w[a e i o u] + %w[A E I O U]
    consonants = alpha - vowels


    piglatinized = []
    input = some_text.split(" ")
        input.each do | word |
            if word.length < 2
                piglatinized << word + "way"
            elsif vowels.include?(word[0])
                piglatinized << word +"way"
            elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                piglatinized <<  word[3..-1] + word[0..2] + "ay"
             elsif consonants.include?(word[0]) && consonants.include?(word[1])
                piglatinized <<  word[2..-1] + word[0..1] + "ay"
             elsif consonants.include?(word[0])
                piglatinized <<  word[1..-1] + word[0] + "ay"
        end  
    end
    piglatinized.join(", ").gsub(/,/, '')
end



end