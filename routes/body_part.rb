require 'sinatra'

get '/body_part/list' do
  #return 'Lista de partes del cuerpo, testeando'
  Body_part.all.to_json #SELEC * FROM BODY_PARTS
  
end