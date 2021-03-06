class FeedsController < ApplicationController

  def show
    @feed = Feed.find(params[:id])
    @bookmarks = @feed.bookmarks.reverse

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
        format.html { redirect_to @feed }
      else
        format.html { render action: "new" }
      end
    end
  end

end
