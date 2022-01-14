n = gets.to_i

a = Array.new(n)
n.times{|i| a[i] = gets.split(" ").map(&:to_i)}

n.times do |i|
  gold = a[i][0]
  silver = a[i][1]

  a[i][0] = silver
  a[i][1] = gold
end

a.sort!.reverse!

a.each do |b|
  b[0], b[1] = b[1], b[0]
  puts b.join(" ")
end