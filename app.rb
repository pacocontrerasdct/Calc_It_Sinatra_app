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
  #puts params
  num1 = params[:num_1].to_i
  num2 = params[:num_2].to_i
  operation = params[:operation]
  arithmetic_op = Arithmetics.new
  
  @title = 'Basic Calculator: Add, rest, multiply and divide two numbers'

  @result =
  if operation == 'add'
      arithmetic_op.sum num1, num2
  else
      'fail'
  end


  erb :basic_calc

end
