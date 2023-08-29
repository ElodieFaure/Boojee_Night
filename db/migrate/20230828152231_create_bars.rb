class CreateBars < ActiveRecord::Migration[7.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :adress
      t.string :category
      t.text :description
      t.integer :average_price
      t.time :open_at
      t.time :close_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
