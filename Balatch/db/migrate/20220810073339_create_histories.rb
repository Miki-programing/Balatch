class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.time :date, null: false
      t.boolean :is_paid, null: false
      t.integer :price, null: false
      t.text :content
      t.integer :method_id, null: false
      t.timestamps
    end
  end
end
