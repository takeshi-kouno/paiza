
#入力データを文字列を分割、数値化
N,M,K = gets.split(" ").map(&:to_i)

info = Array.new(N)
N.times{|i|
info[i] = gets.split(" ").map(&:to_i)
}

#得点の計算
info.each{|paper|
  point = 0
  paper.each{|num|
    point += 1 if num == K
  }
  puts point
}