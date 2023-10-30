puts "как тебя зовут?"
name = gets.chomp
puts "какой у тебя рост?"
rise = gets.chomp.to_i
heft = (rise - 110) * 1.15
if heft < 0
    puts "#{name}, ваш вес уже оптимальный"
else
    puts "#{name}, ваш вес #{heft.to_i}"
end