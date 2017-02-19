class CreateActorEvents < ActiveRecord::Migration
  def change
    create_table :actor_events do |t|
      t.integer :actor_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
