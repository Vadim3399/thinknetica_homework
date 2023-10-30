puts "введите 3 коэффицента:"
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
dis = b ** 2 - 4 * a * c
if dis > 0
  puts "Дискриминант равен: #{dis}. Корнь x1 равен: #{(-b + Math.sqrt(dis)) / (a * 2)} и корень x2 равен: #{ (-b + Math.sqrt(dis)) / (a * 2)}" 
elsif dis == 0
    puts "Дискриминант равен #{dis}. Корень равен: #{x = -b / (2 * a)}"
else
  puts "Дискриминант равен #{dis}. Корней нет!"
end