puts "введите основание" 
base = gets.chomp.to_i
puts "введите высоту" 
height = gets.chomp.to_i
area_triangle = 0.5 * base * height
puts "площать треугольника: #{area_triangle}"