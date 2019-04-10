require 'bookmark'

describe '.all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
  end

  describe '.create' do
    it 'adds a new bookmark url' do
      Bookmark.create(url: "http:/www.lolascupcakes.co.uk")
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http:/www.lolascupcakes.co.uk"
    end
  end
end
