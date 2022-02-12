#一行目
#人数２人、回答数２個、答え、１
#二行目、回答
#2 2
#1 2
#1,1

#入力受取
N,M,K = gets.split(" ").map(&:to_i)

#回答紙を入力受取し配列に入れる
answerLists = []
N.times{
info = gets.split(" ").map(&:to_i)
answerLists.push(info)
}

#得点の計算
answerLists.each{|answerList|
  point = 0

  #numとKが合えば１point
  answerList.each{|num| 
    if num == K
      point += 1 
    end
  }
  puts point
}