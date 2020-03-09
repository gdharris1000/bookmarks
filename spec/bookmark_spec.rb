require 'bookmark'

describe Bookmark do
    it 'initiates with an array' do
        expect(subject).to have_attributes(:bookmarks => ["Bookmark the first", "Bookmark the second", "Bookmark the thrid"])
    end

    it 'all returns array' do
        expect(subject.all).to eq subject.bookmarks
    end
end