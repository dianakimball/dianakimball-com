require 'rubygems'
require 'sinatra'

get '/' do
  redirect 'http://blog.dianakimball.com'
end

get '/2011/03/roflcon-origins.html'
  redirect 'http://www.dianakimball.com/2011/03/roflcon-origins.html'
end
