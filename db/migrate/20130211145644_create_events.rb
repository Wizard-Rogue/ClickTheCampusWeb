class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :time
      t.text :description
      t.string :external_link
      t.integer :creator_id
      t.string :source

      t.timestamps
    end
    
    add_index :events, :creator_id
  end

  def down
    remove_index :events, :creator_id
    drop_table :events
  end
end
