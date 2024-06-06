require 'sinatra'

get '/exercise/list' do
 
  Exercise.all.to_json 
  
end