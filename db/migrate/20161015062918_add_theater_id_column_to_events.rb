class AddTheaterIdColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :theater_id, :integer
  end
end
