
#入力受取
N,M,K = gets.split(" ").map(&:to_i)

#回答紙の配列
info = []
N.times{
  paper = gets.split(" ").map(&:to_i)
info.push(paper)
}

#得点の計算
info.each{|answer|
  point = 0
  #numにinfo(回答紙_を格納
  answer.each{|num| 
  #Kと数字が合えば1point
    if num == K
      point += 1 
    end
  }
  puts point
}