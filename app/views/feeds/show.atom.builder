atom_feed language: 'en-US', root_url: feed_url(@feed), url: feed_url(@feed, format: :atom) do |feed|
  feed.title "listen l8r feed"
  feed.updated Time.now
  @bookmarks.each do |bookmark|
    next if bookmark.created_at.blank?
    feed.entry(bookmark, published: bookmark.created_at, updated: bookmark.updated_at, url: feed_bookmark_url(@feed, bookmark), id: feed_bookmark_url(@feed, bookmark)) do |entry|
      entry.title bookmark.title
      entry.content bookmark.title
      entry.link rel: "enclosure", href: bookmark.location, type: "audio/mpeg"
      entry.author do
        entry.name bookmark.title
      end
    end
  end
end
