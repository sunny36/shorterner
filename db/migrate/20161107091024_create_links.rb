class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :source_url, lenght: 2000, null: false
      t.string :slug, null: false
      t.integer :clicks, default: 0
      t.timestamps
    end
  end
end
