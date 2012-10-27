class BookmarksController < ApplicationController

  before_filter :load_feed

  def create
    @bookmark = @feed.bookmarks.new(params[:bookmark])

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to feed_url(@bookmark.feed), notice: 'Successfully added this file to your feed.' }
      else
        format.html { redirect_to feed_url(@bookmark.feed), alert: 'A file URL could be very helpful here... ;)' }
      end
    end
  end

  def destroy
    @bookmark = @feed.bookmarks.find(params[:id])
    @bookmark.destroy

    respond_to do |format|
      format.html { redirect_to feed_url(@bookmark.feed) }
    end
  end

  private

  def load_feed
    @feed = Feed.find(params[:feed_id])
  end

end
