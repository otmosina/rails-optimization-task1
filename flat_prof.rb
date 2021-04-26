require_relative 'task-1'
require 'ruby-prof'


p "Start prof..."
RubyProf.measure_mode = RubyProf::WALL_TIME
result = RubyProf.profile do
  work('data/data25.txt')
end

printer = RubyProf::FlatPrinter.new(result)
printer.print(File.open('prof_reports/flat.txt', 'w+'))

File.open('prof_reports/flat.txt').each{|line| p line}
p "end prof..."