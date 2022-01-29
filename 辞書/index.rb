#入力受取
N,M,L = gets.split(" ").map(&:to_i)

groupA = {}
N.times{
  num,request = gets.split(" ").map(&:to_i)
  groupA[num] = request
}

groupB = {}
M.times{
  num,request = gets.split(" ").map(&:to_i)
  groupB[num] = request
}

groupC = {}
N.times{|i|
groupC[i + 1] = groupB[groupA[i + 1]]}

groupC.each{ |contactPerson|
  puts contactPerson.join(" ")
}