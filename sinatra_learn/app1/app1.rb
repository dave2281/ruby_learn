require 'sinatra'
require 'puma'

get '/' do
    erb :index
end

post '/' do 
    @login = params[:aaa]
    @password = params[:bbb]

    if @login == 'admin' && @password == 'secret'
        erb :welcome 
    else 
        erb :incorrect
    end 
end