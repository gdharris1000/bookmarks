require 'pg'


feature 'Viewing Bookmarks' do
    
    scenario 'see bookmarks on bookmarks page ' do

        connection = PG.connect(dbname: 'bookmark_manager_test')
        #Add test data

        Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
        Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Sponsored Link')
        Bookmark.create(url: 'http://www.google.com', title: 'Google')


        visit('/bookmarks')
        expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com') 
        expect(page).to have_link('Google', href: 'http://www.google.com')
        expect(page).to have_link('Sponsored Link', href: 'http://www.destroyallsoftware.com') 
    end

end


