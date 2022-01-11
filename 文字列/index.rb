n = gets.to_i

n.times do
  t, c_h, c_m = gets.split(" ")
  h, m = t.split(":").map(&:to_i)
  c_h, c_m = c_h.to_i, c_m.to_i

  h += c_h
  m += c_m
  if m > 59
    h += 1
    m -= 60
  end 
  h -= 24 if h > 23

  h, m = h.to_s, m.to_s
  h = "0" + h if h.length == 1
  m = "0" + m if m.length == 1
  
  puts h + ":" + m
end