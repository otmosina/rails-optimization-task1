require_relative 'task-1'
require 'benchmark-trend'

p "Start trend..."
numbers = Benchmark::Trend.range(100, 1000000, ratio: 10)
trend, trends = Benchmark::Trend.infer_trend(numbers) do |n, i|
    puts "n=#{n}"
    puts "i=#{i}"
    work("data/data#{n}.txt")
end

p "end trend..."

puts trend
puts "\n"
puts trends
