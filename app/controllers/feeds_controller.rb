class FeedsController < ApplicationController

  def show
    @feed = Feed.find(params[:id])
    @bookmarks = @feed.bookmarks

    respond_to do |format|
      format.html
      format.atom
    end
  end

  def new
    @feed = Feed.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @feed = Feed.new(params[:feed])

    respond_to do |format|
      if @feed.save
        format.html { redirect_to @feed, notice: 'Your feed was successfully created. Now start adding audio files.' }
      else
        format.html { render action: "new" }
      end
    end
  end

end
