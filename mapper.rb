require 'rubygems'
require 'csv'

File.open('routes.rb', "wb") do |file|
  file.puts "require 'rubygems'"
  file.puts "require 'sinatra'"

  CSV.foreach('map.csv') do |row|
    file.puts
    file.puts "get '#{row[0].sub(/^http:\/\/www.dianakimball.com/, '')}' do"
    file.puts "  redirect '#{row[1]}'"
    file.puts "end"
  end
end
