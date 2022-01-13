n, m, k = gets.split(" ").map(&:to_i)

total_k = Array.new(n)

n.times{
    |i| total_k[i] = gets.split(" ").select {|num| num.to_i == k}
}

total_k.each do |point| 
  puts point.length
end