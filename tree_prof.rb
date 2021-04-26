require_relative 'task-1'
require 'ruby-prof'


p "Start prof..."
RubyProf.measure_mode = RubyProf::WALL_TIME
result = RubyProf.profile do
  work('data/data25.txt')
end

printer4 = RubyProf::CallTreePrinter.new(result)
printer4.print(:path => "prof_reports", :profile => 'callgrind')

p "end prof..."