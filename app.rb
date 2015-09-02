require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './models/basic_aritmethic'

get '/' do
  @title = 'Calc It - Home'
  erb :home
end

get '/basic' do
  @title = 'Basic Calculator: Add, rest, multiply and divide two numbers'
  erb :basic_calc
end

post '/basic' do
  # puts params
  num1 = params[:num_1].to_f
  num2 = params[:num_2].to_f
  operation = params[:operation].to_s
  aritop = Arithmetics.new
  @title = 'Basic Calculator: Add, rest, multiply and divide two numbers'
  puts num1
  
  if operation == "add"
    result = aritop.sum num1, num2
  elsif operation == "rest"
    result = aritop.rest num1, num2
  elsif operation == "multiply"
    result = aritop.multi num1, num2
  elsif operation == "divide"
    result = aritop.div num1, num2
  else
    result = 0
  end

  @result = result.to_f.round(4)
  erb :basic_calc

end
