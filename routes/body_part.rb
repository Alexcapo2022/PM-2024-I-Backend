require 'sinatra'

get '/body_part/list' do
  BodyPart.all.to_json
end
