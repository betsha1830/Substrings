# PROBLEM
# How many substrings are there from the user input and the dictionary provided.
# (if a word is found as a root word a prefixed or suffixed word that also counts).

# CASES
# 1- Takes two input ( 1- The word to be checked if it exists in the dictionary. 2- The dictionary itself)

# SOLUTION
# 1- Check input by iterating against the dictionary if the input matches as a word (eg input: low, dictionary: below. => this is a match)

def substrings (input, dictionary)
    
    input.downcase!

    dictionary.reduce(Hash.new(0)) do |count, item|
        
        item.scan(input) do 
            count[input] += 1
            count[item] += 1 if (item != input)
        end
        input.scan(item) {count[item] += 1}
        count
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings "Howdy partner, sit down! How's it going?", dictionary