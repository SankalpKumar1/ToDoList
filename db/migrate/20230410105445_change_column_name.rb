class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :CategoryId, :category_id
  end
end
