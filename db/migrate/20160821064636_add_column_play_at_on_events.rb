class AddColumnPlayAtOnEvents < ActiveRecord::Migration
  def change
    add_column :events, :play_at, :datetime
  end
end
