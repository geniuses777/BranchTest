class CreateGeshipans < ActiveRecord::Migration
  def change
    create_table :geshipans do |t|
      t.string :title
      t.string :content
      t.timestamps null: false
    end
  end
end
