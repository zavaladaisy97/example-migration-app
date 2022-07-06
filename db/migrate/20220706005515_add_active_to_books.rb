class AddActiveToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :active, :boolean, default: true 
  end
end
