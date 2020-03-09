feature 'Viewing Bookmarks' do
    scenario 'visit the index page' do
        visit('/')
        expect(page).to have_content "Hello World"
    end

    scenario 'visit bookmarks page' do
        visit('/bookmarks')
        expect(page).to have_content 'Bookmark the first'
    end
    
end