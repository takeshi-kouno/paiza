close = gets.to_i

# 

close.times do
  start, hour, min = gets.split(" ")
  start_h, start_m = t.split(":").map(&:to_i)
  hour, min = hour.to_i, min.to_i

  # 

  start_h += hour
  start_m += min
  if start_m > 59
    start_h += 1
    start_m -= 60
  end 

  start_h -= 24 if start_h > 23

  # DRY don't repeat yourself

  # start_h, start_m = start_h.to_s, start_m.to_s
  # start_h = "0" + start_h if start_h.length == 1
  # start_m = "0" + start_m if start_m.length == 1
  start_h = addZero(start_h)
  start_m = addZero(start_m)
  # 

  puts start_h + ":" + start_m
  # 
end



# 何回入力があるか
# 工事の時間の配列を作る(一個のセットはHash)
# 時間を計算する。
# フォーマットする。関数にする。
# 出力する。


def addZero(time)
  time.to_s
  time = "0" + time if time.length == 1
end

addZero(start_h)