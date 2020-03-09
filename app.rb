require 'sinatra/base'
require_relative './lib/bookmark'

class Bookmarks < Sinatra::Base

    get '/' do
        'Hello World'
    end

    get '/bookmarks' do
        @bookmark_list = Bookmark.all
        erb :bookmarks
    end

end