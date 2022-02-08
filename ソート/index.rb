#入力受取
N = gets.to_i

info = Array.new(N).map{
    gets.split(" ").map(&:to_i)
}

#配列の要素を交換
propertys = info.each{|shift|
  shift[1], shift[0] = shift[0], shift[1]
}

#silverの降順ソート
sortedPropertys = propertys.sort.reverse

#配列の要素を戻してループで出力
sortedPropertys.each{|propertysNew|
  propertysNew[0], propertysNew[1] = propertysNew[1], propertysNew[0]
  puts propertysNew.join(" ")
}