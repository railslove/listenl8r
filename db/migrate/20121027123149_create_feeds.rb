class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds, id: false do |t|
      t.column :id, :uuid, null: false
      t.timestamps
    end
  end
end
