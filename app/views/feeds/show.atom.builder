atom_feed language: 'en-US', root_url: feed_url(@feed), url: feed_url(@feed) do |feed|
  feed.title "listen l8r"
  feed.updated Time.now
  @bookmarks.each do |bookmark|
    next if bookmark.created_at.blank?
    feed.entry(bookmark, published: bookmark.created_at, updated: bookmark.updated_at, url: feed_bookmark_url(@feed, bookmark), id: bookmark.id) do |entry|
      entry.url bookmark.location
      entry.title bookmark.title
      entry.content bookmark.title
      entry.link rel: "enclosure", href: bookmark.location, type: "audio/mpeg"
      entry.updated(bookmark.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
      entry.author "listen l8r"
    end
  end
end
