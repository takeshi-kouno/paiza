#入力受取
N = gets.to_i

info = Array.new(N).map{
    gold, silver = gets.split(" ").map(&:to_i)
    {gold: gold, silver: silver}
    #info = {gold:2,silver:1}
    #info = {gold:2,silver:2}
}

#配列の要素を交換
#propertys = info.each{|shift|
#  shift[1], shift[0] = shift[0], shift[1]
#}
properties = info.sort{|a, b|
[b[:silver], b[:gold]] <=> [a[:silver], a[:gold]]
#[b[:1],b[2]] <=> [a[:2], a[1]]
}

#4の降順ソート
#sortedPropertys = propertys.sort.reverse

#配列の要素を戻してループで出力
properties.each{|propertysNew|
  puts propertysNew.values.join(" ")
}