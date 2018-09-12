require 'wrapper'

str = "X" * 1024 * 1024 * 10 # 10 MB string
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
measure do
  str = str.downcase
end
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
measure do
  str = str.downcase!
end
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)