class AddForeignKeyToCategoryId < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :tasks, :categories, column: :category_id
  end
end
