class AddPostdateToScheduledPost < ActiveRecord::Migration
  def self.up
    add_column :scheduled_posts, :postdate, :datetime
  end

  def self.down
    remove_column :scheduled_posts, :postdate
  end
end
