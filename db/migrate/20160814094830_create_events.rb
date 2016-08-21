class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :title, null: false

      t.timestamps null: false
    end
  end
end
