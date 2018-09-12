require 'wrapper'
require 'csv'

measure do
  data = CSV.open("data.csv")
  puts data
end