# 入力例2
# 2
# 15:59 0 1
# 23:20 1 0


# 入力を受け取る
# 工事時間のデータを格納する配列を作る
N = gets.to_i

schedule = []

N.times{
  info = gets.split(" ")
  schedule.push(info)
  startTime = info[0].split(":")
  workTime = info[1..2]

  startTime: {hour: startTime[0], min: startTime[1]}
  workTime: {hour: workTime[0], min: workTime[1]}
}

# 終了時間を計算したデータを格納する配列を作る

answer = []

schedule.each{|s|
# "15:59"
  startTime = s[0] 
# ["15","59"]
  ss = startTime.split(":")

  startHour = ss[0].to_i
  startMin = ss[1].to_i
  workHour = s[1].to_i
  workMin = s[2].to_i
# ------いじる

draftHour = startHour + workHour
draftMin = startMin + workMin

# ---- 

if draftMin >= 60
  totalHour =  draftHour + 1
  totalMin = draftMin - 60
end

# -----

if totalHour >= 24
  totalHour -= 24
end

# ----

if totalHour.to_s.length == 1
  formatedHour = "0#{totalHour.to_s}"
else
  formatedHour = totalHour.to_s
end

if totalMin.to_s.length == 1
  formatedMin = "0#{totalMin.to_s}"
else
  formatedMin = totalMin.to_s
end


puts = "#{formatedHour}:#{formatedMin}"

answer.puth(answerTime)
}

# 出力する

answer.each{|a|
  puts a
}