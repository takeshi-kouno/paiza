def finishTime(times)
  _, *schedules = times.split("\n")

  finishTimes = schedules.map do |schedule|
    schedule[2] = " "
    startHour, startMin, workHour, workMin = schedule.split.map(&:to_i)
jjjjjjj\
    closeMin = startMin + workMin
    if closeMin >= 60
      closeMin -= 60
      workHour += 1
    end
    closeHour = startHour + workHour
    if closeHour >= 24
      closeHour -= 24
    end

    closeHour = closeHour.to_s
    closeHour = "0" << closeHour if closeHour.length == 1
    closeMin = closeMin.to_s
    closeMin = "0" << closeMin if closeMin.length == 1

    "#{closeHour}:#{closeMin}"
  end

  finishTimes.join("\n") << "\n"
end

puts finishTime(STDIN.read)
