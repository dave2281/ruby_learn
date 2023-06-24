require 'sinatra'
require 'puma'

get '/' do
    erb :index
end


post '/' do 
    @login = params[:aaa]
    erb :index 
end