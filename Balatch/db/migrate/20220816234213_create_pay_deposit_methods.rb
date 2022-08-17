class CreatePayDepositMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :pay_deposit_methods do |t|
      t.string :name
      t.integer :group
      t.timestamps
    end
  end
end
