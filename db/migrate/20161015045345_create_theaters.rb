class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name, null: false
      t.text :address
      t.timestamps null: false
    end
  end
end
