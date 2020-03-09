require 'sinatra/base'
require_relative './lib/bookmark'

class Bookmarks < Sinatra::Base

    get '/' do
        'Hello World'
    end

    get '/bookmarks' do
        @bookmarks = Bookmark.new
        @bookmark_list = @bookmarks.all
        erb :bookmarks
    end

end