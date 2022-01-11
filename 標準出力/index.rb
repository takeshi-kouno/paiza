n = gets.to_i

members = Array.new(n)

n.times { |i| members[i] = gets.split(" ")}

members.each do |member|
    name, age = member [0], member[1].to_i
    puts "#{name}#{" "}#{age + 1}"
end
