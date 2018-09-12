require "benchmark"

nr = 100000
nc = 10
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
data = Array.new(nr){Array.new(nc){"x"*1000}}
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
GC.disable
time = Benchmark.realtime do
  csv = data.map{ |row| row.join(",")}.join("\n")
end
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
puts time.round(2)
