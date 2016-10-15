class AddActorRecital < ActiveRecord::Migration
  def change
    add_column :actors, :recital, :text
  end
end
