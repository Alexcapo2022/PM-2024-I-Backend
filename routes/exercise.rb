require 'sinatra'

get '/exercise/list' do
  body_part_id = params['body_part_id']
  if body_part_id == nil then
    resp = Exercise.all.to_json
  else
    resp = Exercise.where(body_part_id: body_part_id).all.to_json
  end
  resp
end