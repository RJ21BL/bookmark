feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark manager'
  end
end

feature 'Viewing bookmarks' do
  scenario 'visiting bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content 'https://www.bstacademy.co.uk/'
    expect(page).to have_content 'https://www.utcuk.com/'
  end
end
