require 'spec_helper'
describe FeedsController do
  describe "GET show" do
    before do
      @feed         = FactoryGirl.create(:feed)
      @bookmark_one = FactoryGirl.create(:bookmark, :feed => @feed)
      @bookmark_two = FactoryGirl.create(:bookmark, :feed => @feed)
    end

    it "assigns all bookmarks to @bookmarks in reverse order" do
      get :show, :id => @feed
      expect(assigns(:bookmarks)).to eq([@bookmark_two, @bookmark_one])
    end

    it "assigns the current feed @feed" do
      get :show, :id => @feed
      expect(assigns(:feed)).to eq(@feed)
    end

    it "responds to atom format" do
      get :show, :id => @feed, :format => :atom
      expect(response.content_type).to eq("application/atom+xml")
    end
  end

  describe "GET new" do
    it "initializes a new feed" do
      get :new
      expect(assigns(:feed)).to be_new_record
    end
  end

  describe "POST create" do
    it "redirects to the feed's url" do
      post :create
      expect(response).to redirect_to(feed_url(assigns(:feed)))
    end
  end
end
