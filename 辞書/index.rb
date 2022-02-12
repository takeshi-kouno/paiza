#入力受取
A, B, C = gets.split(" ").map(&:to_i)

#A,Bの繋がり
groupA = {}
A.times {
 numA, numB  = gets.split(" ").map(&:to_i)
 groupA[numA] = numB
 #groupA = {numA: numB}
}

#B,Cの繋がり
groupB = {}
B.times {
 numB, numC  = gets.split(" ").map(&:to_i)
 groupB[numB] = numC
 #gorupB = {numB: numc}
}

#C,Aの繋がり
groupC = {}
groupA.each{|key, value|
 groupC[key] = groupB[value]
 #AグループのvulueがBグループのkey
}

#CグループをAグループの順番でソート
sortedgroupC = groupC.sort


sortedgroupC.each{|value|
#  value = {workFrom,id}
 puts value.join(" ")
}


