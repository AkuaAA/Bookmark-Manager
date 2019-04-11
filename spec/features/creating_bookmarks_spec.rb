feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with:'http://www.lolascupcakes.co.uk')
    fill_in('title', with: 'Lolas Cupcake')
    click_button('Submit')

    expect(page).to have_link('Lolas Cupcake', href: 'http://www.lolascupcake.co.uk')
  end
end
