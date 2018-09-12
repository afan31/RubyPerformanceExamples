require "benchmark"

nr = 100000
nc = 10
data = Array.new(nr){Array.new(nc){"x"*1000}}
time = Benchmark.realtime do
  csv = data.map{ |row| row.join(",")}.join("\n")
end
puts time.round(2)