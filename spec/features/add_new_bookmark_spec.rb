feature 'new bookmark' do
  scenario "You can add a new bookmark" do
    visit 'bookmarks/new'
    fill_in :bookmark_site, with: "https://www.lolascupcakes.co.uk"
    click_button "Add"
    expect(page).to have_content "https://www.lolascupcakes.co.uk"
  end
end
