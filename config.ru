require 'sinatra'

class App < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  
  # :num1 and :num2 are named parameters

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 +num2
    {result: sum}.to_json

  end

end

run App
