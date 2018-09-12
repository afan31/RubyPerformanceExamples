require "benchmark"

nr = 100000
nc = 10
data = Array.new(nr){Array.new(nc){"x"*1000}}
time = Benchmark.realtime do
  csv = ''
  nr.times do |row|
    nc.times do |col|
      csv << data[row][col]
      csv << "," unless col = nc - 1
    end
    csv << "\n" unless row = nr - 1
  end
end

puts time.round(2)