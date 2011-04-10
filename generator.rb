require 'rubygems'
require 'csv'

File.open('routes.rb', "wb") do |file|
  file.puts "require 'rubygems'"
  file.puts "require 'sinatra'"

  CSV.foreach('routes.csv') do |row|
    file.puts
    file.puts "get '#{row[0]}' do"
    file.puts "  redirect '#{row[1]}', #{row[2] || 301}"
    file.puts "end"
  end
end
