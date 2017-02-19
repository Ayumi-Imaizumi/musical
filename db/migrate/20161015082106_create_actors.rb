class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :furigana
      t.integer :sex
      t.integer :age
      t.date :birthday

      t.timestamps null: false
    end
  end
end
