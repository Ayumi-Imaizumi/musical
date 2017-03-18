class AddColumnForActerEvents < ActiveRecord::Migration
  def change
    add_column :actor_events, :part_id, :integer
  end
end
