#入力受取
N = gets.to_i

info = Array.new(N).map{
    gold, silver = gets.split(" ").map(&:to_i)
    {gold: gold, silver: silver}
}

properties = info.sort{|a, b|
[b[:silver], b[:gold]] <=> [a[:silver], a[:gold]]
}

properties.each{|propertysNew|
  puts propertysNew.values.join(" ")