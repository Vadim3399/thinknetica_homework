vowel = ["a","e","i","o","u","y"]
hash = {}
("a".."z").each_with_index {|letter, index| hash[letter] = index + 1 if vowel.include?(letter) }
print hash 
