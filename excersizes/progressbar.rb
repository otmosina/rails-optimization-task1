require 'ruby-progressbar'

parts_of_work = 100

progressbar = ProgressBar.create(
    total: parts_of_work,
    format: '%a, %J, %E, %B'
)

(1..parts_of_work).each do |i|
    sleep(1)
    progressbar.increment    
end

