def substrings(input, dictionary)
  input.downcase!

  dictionary.each_with_object(Hash.new(0)) do |item, count|
    item.scan(input) do
      count[input] += 1
      count[item] += 1 if item != input
    end
    input.scan(item) { count[item] += 1 }
  end
end
