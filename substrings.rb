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