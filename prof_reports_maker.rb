require_relative 'task-1'
require 'ruby-prof'


p "Start prof..."
RubyProf.measure_mode = RubyProf::WALL_TIME
result = RubyProf.profile do
  work('data/data100000.txt')
  #work('data/data_large.txt')
end

printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(File.open('prof_reports/graph.html', 'w+'))

#FLAT PROF
printer = RubyProf::FlatPrinter.new(result)
printer.print(File.open('prof_reports/flat.txt', 'w+'))

#TREE PROF
printer = RubyProf::CallTreePrinter.new(result)
printer.print(:path => "prof_reports", :profile => 'callgrind')

#CALLSTACK
printer = RubyProf::CallStackPrinter.new(result)
printer.print(File.open('prof_reports/callstack.html', 'w+'))