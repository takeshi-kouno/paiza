#入力受取
N = gets.to_i

#財産の配列
property = []
N.times{
info = gets.split(" ").map(&:to_i)
property.push(info)
#{"gold", "silver"}
}

#金と銀を逆にする
N.times{
  gold = property[0]
  silver = property[1]

  property[0] = silver
  property[1] = gold
}

#配列を降順にする
property.sort.reverse


property.each{|propertyNew|
  b[0], b[1] = b[1], b[0]
  puts b.join(" ")
}