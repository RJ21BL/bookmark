require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark manager'
  end

  get '/bookmarks' do
    @bookmarks = [
      'https://www.bstacademy.co.uk/',
      'https://www.utcuk.com/'
    ]

    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
