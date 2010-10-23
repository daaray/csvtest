class CreateScheduledPosts < ActiveRecord::Migration
  def self.up
    create_table :scheduled_posts do |t|
      t.string :content
      t.integer :reenactment_id
      t.integer :character_id

      t.timestamps
    end
  end

  def self.down
    drop_table :scheduled_posts
  end
end
