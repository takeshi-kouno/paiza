number, m, k = gets.split(' ').map(&:to_i)

a = Array.new(n)
n.times { |i| a[i] = gets.split(' ').map(&:to_i) }

a.each do |card|
  point = 0
  card.each do |num|
    point += 1 if num == k
  end
  puts point
end




def points(inputDates)
    inputDates = inputDates.split("\n")
    persons, entry, answer = inputDates.shift.split.map(&:to_i)
    ary = inputDates.shift(persons).map do |date|
      date.split.map(&:to_i)
    end
    
    result = ary.each.map do |member|
      
      member.count { |num| num == answer }
    end
    
    result.join("\n") << "\n"
  end
  puts points(STDIN.read)