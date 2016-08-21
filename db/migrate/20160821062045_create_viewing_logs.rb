class CreateViewingLogs < ActiveRecord::Migration
  def change
    create_table :viewing_logs do |t|
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
