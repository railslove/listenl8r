class Bookmark < ActiveRecord::Base
  belongs_to :feed
  validates :location, :presence => true
end
