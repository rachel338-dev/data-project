class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :post, :users 
  end
end
