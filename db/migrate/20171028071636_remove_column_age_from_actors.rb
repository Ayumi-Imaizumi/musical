class RemoveColumnAgeFromActors < ActiveRecord::Migration
  def change
    remove_column :actors, :age
  end
end
