class RenameMethodIdColumnToHistories < ActiveRecord::Migration[6.1]
  def change
    rename_column :histories, :method_id, :pay_deposit_method_id
  end
end
