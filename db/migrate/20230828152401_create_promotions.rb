class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :offer
      t.date :start_date
      t.date :end_date
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
