class Runner
    def run &block
        puts "start..."
        #block.call
        yield
        puts "end..."
    end
end

r = Runner.new

r.run do 
    arr = ['u']*1_000_000*10
    arr.each do |e|
        e + '1'
    end
    p arr.size
end
