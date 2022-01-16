N = gets.to_i

members = Array.new(N).map {
    info = gets.split(" ")
    {name:info[0],age:info[1].to_i}
}

members.each {|member|
    puts "#{member[:name]} #{member[:age]+1}"
}