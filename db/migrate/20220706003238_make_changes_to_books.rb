class MakeChangesToBooks < ActiveRecord::Migration[7.0]
  def change
    # renaming a column - tbl, old column name, new column name 
    rename_column :books, :name, :title 

    # change a column type - tbl, column, new type
    change_column :books, :description, :text

    # change price column form integer to decimal - tbl, column, new type, modifiers
    change_column :books, :price, :decimal, precision: 5, scale: 2
    
    # remove a column - tbl, column, type
    remove_column :books, :isbn, :string 

    # ex: change string value to a decimal
    # change_column :books, :price, "numeric USING CAST(price AS numeric)" 
    # change_column :books, :price, :decimal. precision: 9, scale: 2
  end
end
