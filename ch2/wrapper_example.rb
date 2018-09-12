require './wrapper'
require 'csv'

measure do
  test_data = Array.new(100000){Array.new(10){"x"*1000}}
  File.open("data.csv", "w+") {|f| f.write_test_data.join("\n")}
  data = CSV.open("data.csv")
  output = data.readlines.map do |line|
    line.map {|col| col.downcase.gsub(/\b('?[a-z])/){$1.capitalize}}
  end
  File.open("output.csv", "w+") {|f| f.write_output.join("\n")}
end