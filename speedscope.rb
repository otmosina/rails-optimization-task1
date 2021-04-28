# Stackprof report -> flamegraph in speedscope https://www.speedscope.app
# ruby 17-stackprof-speedscope.rb
require 'json'
require 'stackprof'
require_relative 'task-1.rb'

p "start..."
profile = StackProf.run(mode: :wall, raw: true, ignore_gc: true) do
  work('data/data25.txt')
end
p "finish!"

File.write('stackprof_reports/stackprof.json', JSON.generate(profile))