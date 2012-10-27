class Feed < ActiveRecord::Base
  include Extensions::UUID
  has_many :bookmarks
end
