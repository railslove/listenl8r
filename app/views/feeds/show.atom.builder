atom_feed :language => 'en-US' do |feed|
  feed.title "listenl8r feed"
  feed.updated Time.now
  @bookmarks.each do |bookmark|
    next if bookmark.created_at.blank?
    feed.entry(@feed, bookmark) do |entry|
      entry.url bookmark.location
      entry.title bookmark.title
      entry.content bookmark.title
      entry.link :rel => "enclosure", :href => bookmark.location, :type => "audio/mpeg"
      entry.updated(bookmark.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
      entry.author "listenl8r feed"
    end
  end
end
