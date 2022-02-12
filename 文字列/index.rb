#入力受取
N = gets.to_i

#工事の時刻を受け取って配列にする
schedules = []

N.times{
  schedule = gets.split(" ")
  startTime = schedule[0].split(":").map(&:to_i)
  workTime = schedule[1..2].map(&:to_i)

  schedule = {
    startTime: {hour: startTime[0], min: startTime[1]},
    workTime: {hour: workTime[0], min: workTime[1]}
  }

  schedules.push(schedule)
}

endtimeList = []
#計算する
schedules.each{|schedule|
  startTime = schedule[:startTime]
  workTime = schedule[:workTime]

totalHour = startTime[:hour] + workTime[:hour]
totalMin = startTime[:min] + workTime[:min]

#繰り上げ計算
if totalMin >= 60
  totaltHour + 1
  totalMin - 60
end

if totalHour >= 24
  totalHour -= 24
end

#一桁の場合０を追加
if totalHour.to_s.length == 1
  endHour = "0#{totalHour.to_s}"
else
  endHour = totalHour.to_s
end

if totalMin.to_s.length == 1
  endMin = "0#{totalMin.to_s}"
else
  endMin = totalMin.to_s
end

endTime = "#{endHour}:#{endMin}"
endtimeList.push(endTime)
}

#ループして出力
endtimeList.each{|answer|
  puts answer
}