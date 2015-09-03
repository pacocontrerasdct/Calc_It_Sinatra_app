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

get '/mortgage' do
  @title = 'Mortgage Calculator: '
  erb :mortgage_calc
end

get '/bmi' do
  @title = 'BMI Calculator: '
  erb :bmi_calc
end

get '/trip' do
  @title = 'Trip Calculator: '
  erb :trip_calc
end

get '/cilinder' do
  @title = 'Cilinder\'s Volume Calculator: '
  erb :cilinder_calc
end

post '/basic' do
  # puts params
  num1 = params[:num_1].to_f
  num2 = params[:num_2].to_f
  operation = params[:operation].to_s
  aritop = CalculatorMachine.new
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

  @result = "Result: #{result.to_f.round(4)}"
  erb :basic_calc

end

post '/mortgage' do
  # puts params
  num1 = params[:num_1].to_f
  num2 = params[:num_2].to_f
  num3 = params[:num_3].to_f
  puts params
  aritop = CalculatorMachine.new
  @title = 'Mortgage Calculator: '
  puts num3
  
  result = aritop.mortgage num1, num2, num3

  @result = "Result:Your Monthly Payment would be #{result.to_f.round(2)} pounds."
  erb :mortgage_calc

end

post '/bmi' do
  # puts params
  num1 = params[:num_1].to_f
  num2 = params[:num_2].to_f
  system = params[:system].to_s
  puts params
  aritop = CalculatorMachine.new
  @title = 'BMI Calculator: '

  if system == "metric"
    result = aritop.bmi_metric num1, num2
    result = "#{result.to_f.round(2)} kilos by square metre."
  elsif system == "imperial"
    result = aritop.bmi_imperial num1, num2
    result = "#{result.to_f.round(2)} libras by square inch."
  else
    result = 0
  end

  @result = "Result: Your Body Mass Index is ".concat result
  erb :bmi_calc

end