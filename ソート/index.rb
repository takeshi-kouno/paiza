#入力受取
N = gets.to_i

propertys = Array.new(N).map{
    gets.split(" ").map(&:to_i)
}

#配列の要素を逆にする
N.times{|num|
#{golf, silver}
  gold = propertys[num][0]
  silver = propertys[num][1]
#{silver, gold}
  propertys[num][0] = silver
  propertys[num][1] = gold
}

#silverの降順ソート
propertys.sort!.reverse!

#配列の要素を戻してループで出力
propertys.each{|propertysNew|
  propertysNew[0], propertysNew[1] = propertysNew[1], propertysNew[0]
  puts propertysNew.join(" ")
}