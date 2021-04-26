
# Stackprof report
# ruby 16-stackprof.rb
# cd stackprof_reports
# stackprof stackprof.dump
# stackprof stackprof.dump --method Object#work


require 'stackprof'
require_relative 'task-1'

StackProf.run(mode: :wall, out: 'stackprof_reports/stackprof_gc.dump', interval: 1000, ignore_gc: false) do
    work('data/data25.txt')
end