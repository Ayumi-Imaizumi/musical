class AddColumnsToPart < ActiveRecord::Migration
  def change
    add_column :parts, :actor_id, :integer
    add_column :parts, :event_id, :integer
  end
end
