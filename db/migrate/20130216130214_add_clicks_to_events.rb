class AddClicksToEvents < ActiveRecord::Migration
  def change
    add_column :events, :clicks, :integer, :default => 0
  end
end
