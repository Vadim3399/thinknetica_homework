arr_f = [0,1]
loop do
  next_f = arr_f[-1] + arr_f[-2] 
  break if next_f >= 100
  arr_f << next_f
end
print arr_f
