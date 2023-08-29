class CreateBarTags < ActiveRecord::Migration[7.0]
  def change
    create_table :bar_tags do |t|
      t.references :bar, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
