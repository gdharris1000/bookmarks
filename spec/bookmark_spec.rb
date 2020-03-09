require 'bookmark'

describe Bookmark do
    it 'all returns array' do
        bookmarks = Bookmark.all
        expect(bookmarks).to eq ["Bookmark the first", "Bookmark the second", "Bookmark the thrid"]
    end
end