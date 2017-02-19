class AddActorIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :actor_id, :integer
  end
end
