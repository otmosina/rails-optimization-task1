require 'benchmark'
require 'benchmark/ips'
ROWS = 100_000
COLS = 10
REPS = 1000

puts "Start"


GC.disable
data = Array.new(ROWS) do
    Array.new(COLS) { 'x' * REPS }
end

time = Benchmark.realtime do
    data.map { |row| row.join(',') }.join("\n")
end

puts "Finish in #{time.round(2)}"

Benchmark.ips do |x|
    x.report("slow string concatenation") do
        data.map { |row| row.join(",") }.join("\n")
    end
end