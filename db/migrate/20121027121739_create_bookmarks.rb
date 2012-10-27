class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.uuid :feed_id
      t.string :title
      t.string :location
      t.timestamps
    end
  end
end
