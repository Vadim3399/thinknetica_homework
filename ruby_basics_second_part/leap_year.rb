print "Введите день: "
day = gets.chomp.to_i
print "месяц: "
month = gets.chomp.to_i 
print "и год: "
year = gets.chomp.to_i
sum = 0
days_in_a_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_a_month[1] = 29 if year % 400 == 0 || ( year % 4 ==0 && year % 100 != 0)
sum = 0
(0..month - 2).each do |month|
  sum += days_in_a_month[month]
end
sum += day
puts "Порядковый номер даты: #{sum}"
