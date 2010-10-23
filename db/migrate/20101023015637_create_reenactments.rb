class CreateReenactments < ActiveRecord::Migration
  def self.up
    create_table :reenactments do |t|
      t.string :title
      t.string :desciprtion

      t.timestamps
    end
  end

  def self.down
    drop_table :reenactments
  end
end
