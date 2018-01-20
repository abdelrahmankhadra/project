class ChangeDataTypeForTotal < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :total, :decimal
  end
end
