require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    redirect '/bookmarks'
  end 

  get '/bookmarks' do
    # render erb view using the model 
    erb:index
  end 

  run! if app_file == $0
end