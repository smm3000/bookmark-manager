feature BookmarkManager do
    scenario 'it opens the bookmark route' do
        visit ('/bookmarks')
        expect(page).to have_content('http://www.google.com')
    end 
end 