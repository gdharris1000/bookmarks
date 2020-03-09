class Bookmark
    attr_reader :bookmarks
    def initialize
        @bookmarks = ["Bookmark the first", "Bookmark the second", "Bookmark the thrid"]
    end

    def all
        return @bookmarks
    end
end