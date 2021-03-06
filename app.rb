require 'sinatra/base'
require_relative './lib/bookmark'
require_relative './database_connection_setup'
require 'uri'
require 'sinatra/flash'
require_relative './lib/tag'
require_relative './lib/bookmark_tag'

class Bookmarks < Sinatra::Base

    enable :sessions, :method_override
    register Sinatra::Flash

    get '/' do
        'Bookmark Manager'
    end

    get '/bookmarks' do
        @bookmarks = Bookmark.all
        erb :'bookmarks/index'
    end

    get '/bookmarks/new' do
        erb :"bookmarks/new"
    end

    post '/bookmarks' do 
       flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params[:url], title: params[:title]) 
       redirect '/bookmarks'
    end

    delete '/bookmarks/:id' do
        Bookmark.delete(id: params[:id])
        redirect "/bookmarks"
    end

    get '/bookmarks/:id/edit' do
        @bookmark = Bookmark.find(id: params[:id])
        erb :"bookmarks/edit"
    end

    patch '/bookmarks/:id' do
        Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
        redirect('/bookmarks')
    end

    get '/bookmarks/:id/comments/new' do
        @bookmark_id = params[:id]
        erb :"comments/new"
    end

    post '/bookmarks/:id/comments' do
        
        Comment.create(text: params[:comment], bookmark_id: params[:id])
        
        # connection = PG.connect(dbname: 'bookmark_manager_test')
        # connection.exec("INSERT INTO comments (text, bookmark_id) VALUES('#{params[:comment]}', '#{params[:id]}');")
        
        redirect('/bookmarks')
    end

    get '/bookmarks/:id/tags/new' do
        @bookmark_id = params[:id]
        erb :'/tags/new'
    end

    post '/bookmarks/:id/tags' do
        tag = Tag.create(content: params[:tag])
        BookmarkTag.create(bookmark_id: params[:id], tag_id: tag.id)
        redirect('/bookmarks')
    end

end